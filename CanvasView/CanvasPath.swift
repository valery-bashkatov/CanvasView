//
//  CanvasPath.swift
//  CanvasView
//
//  Created by Valery Bashkatov on 10.08.16.
//  Copyright © 2016 Valery Bashkatov. All rights reserved.
//

import UIKit

/**
 The `CanvasPath` class extends `UIBezierPath` by adding stroke and fill colors. 
 
 - seealso: `CanvasView`
 */
public class CanvasPath: UIBezierPath {
    
    // MARK: - Properties
    
    /// The stroke color.
    public var strokeColor: UIColor?
    
    /// The fill color.
    public var fillColor: UIColor?
}