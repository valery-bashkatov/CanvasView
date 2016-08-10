//
//  CanvasView.swift
//  CanvasView
//
//  Created by Valery Bashkatov on 10.08.16.
//  Copyright © 2016 Valery Bashkatov. All rights reserved.
//

import UIKit

/**
 The `CanvasView` class makes it easy to draw shapes.
 */
public class CanvasView: UIView {
    
    // MARK: - Properties
    
    /// The paths that will be drawn.
    public var paths = [CanvasPath]() {
        didSet {
            
            // Redraw paths
            setNeedsDisplay()
        }
    }
    
    // MARK: - Initialization
    
    /// :nodoc:
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    /// :nodoc:
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    /// Makes initial setup.
    private func setup() {
        
        // Default transparent background.
        opaque = false
    }
    
    // MARK: - Drawing
    
    /// :nodoc:
    public override func drawRect(rect: CGRect) {
        for path in paths {
            if path.strokeColor != nil {
                path.strokeColor!.setStroke()
                path.stroke()
            }
            
            if path.fillColor != nil {
                path.fillColor!.setFill()
                path.fill()
            }
        }
    }
}