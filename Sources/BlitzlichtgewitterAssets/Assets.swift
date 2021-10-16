import Foundation

public struct Assets {

    public static func url(forResource name: String?, withExtension fileExtension: String? = nil) -> URL? {
        Bundle.module.url(forResource: name, withExtension: fileExtension, subdirectory: "Resources")
    }

}
