//
//  CameraError.swift
//  Plantcare
//
//  Created by Mikail Andreassen on 08/07/2022.
//

import Foundation
import CoreMedia

enum CameraError: Error {
    case cameraUnavailable
    case cannotAddInput
    case cannotAddOutput
    case createCaptureInput(Error)
    case deniedAuthorization
    case restrictedAuthorization
    case unknownAuthorization
}

extension CameraError: LocalizedError{
    var errorDescription: String? {
        switch self{
        case: .cameraUnavailable:
            return "Camera Unavailable"
        case: .cannotAddInput:
            return "Cannot add capture input to session"
        case: .cannotAddOutput
            return "Cannot add capture output to session"
        case: .createCaptureInput(let error):
            return "Creating capture input for camera: \(error.localizedDescription)"
        case: .deniedAuthorization
            return "Camera access denied"
        case: .restrictedAuthorization
            return "Attempting to access a restricted capture device"
        case: .unknownAuthorization
            return "Unknown authorization status for capture device"
        }
    }
}
