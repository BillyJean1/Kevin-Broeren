//
//  QRScannerController.swift
//
//  Created by Kevin Broeren on 18-12-2017.
//

import UIKit
import AVFoundation

class QRScannerController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    // The buttons ... (will dissapear once clicked: the idea is to replace them by the camera view, something to work on once we actually implement this feature)
    @IBOutlet weak var iHaveATicketButton: UIButton!
    @IBOutlet weak var iHaveNoTicketButton: UIButton!
    
    // A label to display the result. For now we will just use this to display the scan result. In the actual implementation we want to move to another page or something (prepareSegue with this value).
    @IBOutlet var resultLabel:UILabel!
    
    // Camera variables
    var captureSession:AVCaptureSession?
    var videoPreviewLayer:AVCaptureVideoPreviewLayer?
    
    // This view will display everything that the camera records (awesome variable name)
    @IBOutlet weak var qrCodeFrameView: UIView!
    
    // This view will display detection boxes around codes. This variable actually has a damn clear name.
    var qrCodeHighlightFrameView:UIView?
    
    // What do we want to scan? For now: let's just scan everything possible
    let supportedCodeTypes = [AVMetadataObject.ObjectType.upce,
                              AVMetadataObject.ObjectType.code39,
                              AVMetadataObject.ObjectType.code39Mod43,
                              AVMetadataObject.ObjectType.code93,
                              AVMetadataObject.ObjectType.code128,
                              AVMetadataObject.ObjectType.ean8,
                              AVMetadataObject.ObjectType.ean13,
                              AVMetadataObject.ObjectType.aztec,
                              AVMetadataObject.ObjectType.pdf417,
                              AVMetadataObject.ObjectType.qr]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // First: lets give the buttons some beautiful colors.
        iHaveATicketButton.backgroundColor = UIColor.green
        iHaveNoTicketButton.backgroundColor = UIColor.red
    }
    
    // What happens when I have/hava (lol) clicked the button that states that I have a ticket? (the other one does nothing, geen ticket? koop dan.) Well, this:
    @IBAction func iHavaATicketAction(_ sender: UIButton) {
        
        // First, we (disable and) hide the buttons.
        iHaveATicketButton.isHidden = true
        iHaveNoTicketButton.isHidden = true
        
        // Then we initialize the capture device (this selects the camera to use, the default device for capturing video (backside cam on iPhone))
        let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice!)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            
            // Bunch of stuff from the tutorial {
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession?.addOutput(captureMetadataOutput)
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = supportedCodeTypes
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
            videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
            videoPreviewLayer?.frame = qrCodeFrameView.bounds
            // }
            
            // Adding this camera view as a sublayer so we actually see shit.
            view.layer.addSublayer(videoPreviewLayer!)
            
            // And last but not least, start the video capture. Now the camera part works.
            captureSession?.startRunning()
            
            // Moving on to the recognition part: We want to move the resultlabel to the front, otherwise we wont see it when its behind the camera view (if so).
            view.bringSubview(toFront: resultLabel)
            
            // To highlight the QRCode / BarCode, we need the following coe:
            qrCodeHighlightFrameView = UIView()
            if let qrCodeHighlightFrameView = qrCodeHighlightFrameView {
                print("highlightqrcode")
                qrCodeHighlightFrameView.layer.borderColor = UIColor.green.cgColor
                qrCodeHighlightFrameView.layer.borderWidth = 2
                view.addSubview(qrCodeHighlightFrameView)
                view.bringSubview(toFront: qrCodeHighlightFrameView)
            }
            
        } catch {
            print(error)
            return
        }
    }
    
    // Delegate for the meta-output of the camera:
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        
        // Check if the metadataObjects array is not nil and it contains at least one object.
        if metadataObjects == nil || metadataObjects.count == 0 {
            qrCodeHighlightFrameView?.frame = CGRect.zero
            resultLabel.text = "No QR/barcode is detected"
            return
        }
        
        // Get the metadata object we want (first one).
        let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
        
        if supportedCodeTypes.contains(metadataObj.type) {
            // If the found metadata is equal to the QR code metadata then update the status label's text and set the bounds
            let barCodeObject = videoPreviewLayer?.transformedMetadataObject(for: metadataObj)
            qrCodeHighlightFrameView?.frame = barCodeObject!.bounds
            
            if metadataObj.stringValue != nil {
                resultLabel.text = metadataObj.stringValue
            }
        }
    }
    
}
