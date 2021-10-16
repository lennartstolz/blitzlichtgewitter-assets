import XCTest
import BlitzlichtgewitterAssets

final class AssetsTests: XCTestCase {

    func testLoadingAnAsset() throws {
        let url = Assets.url(forResource: "red-green-blue-reference-image", withExtension: ".ppm")
        let data = try Data(contentsOf: XCTUnwrap(url))
        let asciiImage = String(data: data, encoding: .ascii)
        let expectedImage = """
        P3
        3 1
        255
        255 0 0 0 255 0 0 0 255
        """.appending("\n")
        XCTAssertEqual(asciiImage, expectedImage)
    }

}
