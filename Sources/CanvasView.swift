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
open class CanvasView: UIView {
    
    // MARK: - Properties
    
    /// The paths that will be drawn.
    open var paths = [CanvasPath]() {
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
    fileprivate func setup() {
        
        // Default transparent background.
        isOpaque = false
    }
    
    // MARK: - Drawing
    
    /// :nodoc:
    open override func draw(_ rect: CGRect) {
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
