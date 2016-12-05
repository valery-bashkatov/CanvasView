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
open class CanvasPath: UIBezierPath {
    
    // MARK: - Properties
    
    /// The stroke color.
    open var strokeColor: UIColor?
    
    /// The fill color.
    open var fillColor: UIColor?
}
