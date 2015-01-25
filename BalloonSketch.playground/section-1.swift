import UIKit

let viewFactory = { (x: Double, y: Double) -> (UIView) in
    let size:CGSize = CGSize(width: 200, height: 200)
    let view = UIView(frame: CGRect(origin: CGPoint(x: x, y: y), size: size))
    view.backgroundColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
    view.backgroundColor = UIColor.whiteColor()

    return view
}

let balloon = { () -> (UIView) in
    let view = viewFactory(0.0, 0.0)
    
    UIGraphicsBeginImageContextWithOptions(view.frame.size, false, 0)
    var path: UIBezierPath = UIBezierPath()
    path.moveToPoint(CGPoint(x: 100.0, y: 200.0))
    path.addArcWithCenter(CGPoint(x: 80.0, y: 200.0),
        radius: 20.0,
        startAngle: (CGFloat)(0.0),
        endAngle: (CGFloat)(2 * M_PI_4 * 3),
        clockwise: false)
    path.addLineToPoint(CGPoint(x: 20.0, y: 180.0))
    path.addArcWithCenter(CGPoint(x: 20.0, y: 160.0),
        radius: 20.0,
        startAngle: (CGFloat)(M_PI_2),
        endAngle: (CGFloat)(M_PI),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 0.0, y: 20.0))
    path.addArcWithCenter(CGPoint(x: 20.0, y: 20.0),
        radius: 20.0,
        startAngle: (CGFloat)(M_PI),
        endAngle: (CGFloat)(2 * M_PI_4 * 3),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 180.0, y: 0.0))
    path.addArcWithCenter(CGPoint(x: 180.0, y: 20.0),
        radius: 20.0,
        startAngle: (CGFloat)(2 * M_PI_4 * 3),
        endAngle: (CGFloat)(0.0),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 200.0, y: 160.0))
    path.addArcWithCenter(CGPoint(x: 180.0, y: 160.0),
        radius: 20.0,
        startAngle: (CGFloat)(0.0),
        endAngle: (CGFloat)(M_PI_2),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 120.0, y: 180.0))
    path.addArcWithCenter(CGPoint(x: 120.0, y: 200.0),
        radius: 20.0,
        startAngle: (CGFloat)(2 * M_PI_4 * 3),
        endAngle: (CGFloat)(M_PI_2),
        clockwise: false)
    path.closePath()
    // CGContextSetShadow(UIGraphicsGetCurrentContext(),
    //    CGSize(width: 0.0, height: 0.5), 2.0)
    UIColor.greenColor().setStroke()
    path.stroke()
    UIColor.greenColor().setFill()
    path.fill()
    
    view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage
    
    UIGraphicsEndImageContext()
    
    return view
}

let balloon2 = { () -> (UIView) in
    let view = viewFactory(0.0, 0.0)
    
    UIGraphicsBeginImageContextWithOptions(view.frame.size, false, 0)
    var path: UIBezierPath = UIBezierPath()
    path.moveToPoint(CGPoint(x: 100.0, y: 190.0))
    path.addLineToPoint(CGPoint(x: 90.0, y: 180.0))
    path.addLineToPoint(CGPoint(x: 20.0, y: 180.0))
    path.addArcWithCenter(CGPoint(x: 20.0, y: 160.0),
        radius: 20.0,
        startAngle: (CGFloat)(M_PI_2),
        endAngle: (CGFloat)(M_PI),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 0.0, y: 20.0))
    path.addArcWithCenter(CGPoint(x: 20.0, y: 20.0),
        radius: 20.0,
        startAngle: (CGFloat)(M_PI),
        endAngle: (CGFloat)(2 * M_PI_4 * 3),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 180.0, y: 0.0))
    path.addArcWithCenter(CGPoint(x: 180.0, y: 20.0),
        radius: 20.0,
        startAngle: (CGFloat)(2 * M_PI_4 * 3),
        endAngle: (CGFloat)(0.0),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 200.0, y: 160.0))
    path.addArcWithCenter(CGPoint(x: 180.0, y: 160.0),
        radius: 20.0,
        startAngle: (CGFloat)(0.0),
        endAngle: (CGFloat)(M_PI_2),
        clockwise: true)
    path.addLineToPoint(CGPoint(x: 110.0, y: 180.0))
    path.closePath()
    UIColor.greenColor().setStroke()
    path.stroke()
    UIColor.greenColor().setFill()
    path.fill()
    
    view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage
    
    UIGraphicsEndImageContext()
    
    return view
}

let balloon3 = { () -> (UIView) in
    let view = viewFactory(0.0, 0.0)
    
    UIGraphicsBeginImageContextWithOptions(view.frame.size, false, 0)
    var path: UIBezierPath = UIBezierPath()
    path.moveToPoint(CGPoint(x: 30.0, y: 180.0))
    path.addLineToPoint(CGPoint(x: 20.0, y: 140.0))
    path.closePath()
    path.moveToPoint(CGPoint(x: 170.0, y: 180.0))
    path.addLineToPoint(CGPoint(x: 180.0, y: 140.0))
    path.closePath()
    path.lineWidth = 6.0
    UIColor.blueColor().setStroke()
    path.stroke()
    
    view.layer.contents = UIGraphicsGetImageFromCurrentImageContext().CGImage
    UIGraphicsEndImageContext()
    
    return view
}

let preview = balloon2()
