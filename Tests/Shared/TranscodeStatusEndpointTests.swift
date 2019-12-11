//
//  TranscodeStatusEndpointTests.swift
//  VimeoNetworking-iOSTests
//
//  Created by Nicole Lehrer on 12/10/19.
//  Copyright © 2019 Vimeo. All rights reserved.
//

import XCTest
@testable import VimeoNetworking

class TranscodeStatusEndpointTests: XCTestCase {
    
    // MARK: - TranscodeStatusEndpoint Tests

    func testTranscodeStatusEndpoint_returnsCorrectURL() {
        let videoURI = "abc123"
        let expectedPath = VimeoBaseURL.appendingPathComponent(videoURI).appendingPathComponent("status")
        do {
            let urlRequest = try TranscodeStatusEndpoint(videoURI: videoURI).asURLRequest()
            XCTAssertTrue(urlRequest.url == expectedPath)
        }
        catch let error {
            XCTFail("Failed with error \(error)")
        }
    }
}
