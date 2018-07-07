import UIKit

extension UIView {
    typealias AnchorConstant = CGFloat
    typealias AnchorMultiplier = CGFloat
    
    enum AnchorStyle {
        case topTo(NSLayoutYAxisAnchor, AnchorConstant), bottomTo(NSLayoutYAxisAnchor, AnchorConstant), firstBaselineTo(NSLayoutYAxisAnchor, AnchorConstant), lastBaselineTo(NSLayoutYAxisAnchor, AnchorConstant), centerYTo(NSLayoutYAxisAnchor, AnchorConstant), leftTo(NSLayoutXAxisAnchor, AnchorConstant), rightTo(NSLayoutXAxisAnchor, AnchorConstant), leadingTo(NSLayoutXAxisAnchor, AnchorConstant), trailingTo(NSLayoutXAxisAnchor, AnchorConstant), centerXTo(NSLayoutXAxisAnchor, AnchorConstant)
        case widthOf(AnchorConstant, NSLayoutDimension?), heightOf(AnchorConstant, NSLayoutDimension?)
        case widthMultiplyOf(NSLayoutDimension, AnchorMultiplier, AnchorConstant), heightMultiplyOf(NSLayoutDimension, AnchorMultiplier, AnchorConstant)
    }
    
    func anchor(_ anchorStyle: AnchorStyle) {
        switch anchorStyle {
        case .topTo(let destination, let constant):
            self.topAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .bottomTo(let destination, let constant):
            self.bottomAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .firstBaselineTo(let destination, let constant):
            self.firstBaselineAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .lastBaselineTo(let destination, let constant):
            self.lastBaselineAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .centerYTo(let destination, let constant):
            self.centerYAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .leftTo(let destination, let constant):
            self.leftAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .rightTo(let destination, let constant):
            self.rightAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .leadingTo(let destination, let constant):
            self.leadingAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .trailingTo(let destination, let constant):
            self.trailingAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .centerXTo(let destination, let constant):
            self.centerXAnchor.constraint(equalTo: destination, constant: constant).isActive = true
        case .widthOf(let constant, let optionalDestination): if let destination = optionalDestination {
            self.widthAnchor.constraint(equalTo: destination, constant: constant).isActive = true } else {
            self.widthAnchor.constraint(equalToConstant: constant).isActive = true }
        case .heightOf(let constant, let optionalDestination): if let destination = optionalDestination {
            self.heightAnchor.constraint(equalTo: destination, constant: constant).isActive = true } else {
            self.heightAnchor.constraint(equalToConstant: constant).isActive = true }
        case .widthMultiplyOf(let destination, let multiplier, let constant):
            self.widthAnchor.constraint(equalTo: destination, multiplier: multiplier, constant: constant).isActive = true
        case .heightMultiplyOf(let destination, let multiplier, let constant):
            self.heightAnchor.constraint(equalTo: destination, multiplier: multiplier, constant: constant).isActive = true
        }
    }
    
    func anchors(top: (to: NSLayoutYAxisAnchor?, constant: CGFloat)? = nil,
                 bottom: (to: NSLayoutYAxisAnchor?, constant: CGFloat)? = nil,
                 left: (to: NSLayoutXAxisAnchor?, constant: CGFloat)? = nil,
                 right: (to: NSLayoutXAxisAnchor?, constant: CGFloat)? = nil,
                 leading: (to: NSLayoutXAxisAnchor?, constant: CGFloat)? = nil,
                 trailing: (to: NSLayoutXAxisAnchor?, constant: CGFloat)? = nil,
                 centerX: (to: NSLayoutXAxisAnchor?, constant: CGFloat)? = nil,
                 centerY: (to: NSLayoutYAxisAnchor?, constant: CGFloat)? = nil,
                 firstBaseline: (to: NSLayoutYAxisAnchor?, constant: CGFloat)? = nil,
                 lastBaseline: (to: NSLayoutYAxisAnchor?, constant: CGFloat)? = nil,
                 width: (to: NSLayoutDimension?, multiplier: CGFloat?, constant: CGFloat)? = nil,
                 height: (to: NSLayoutDimension?, multiplier: CGFloat?, constant: CGFloat)? = nil) {
        self.translatesAutoresizingMaskIntoConstraints = false
        if let (top, constant) = top { if let destination = top {
            self.topAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (bottom, constant) = bottom { if let destination = bottom {
            self.bottomAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (left, constant) = left { if let destination = left {
            self.leftAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (right, constant) = right { if let destination = right {
            self.rightAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (leading, constant) = leading { if let destination = leading {
            self.leadingAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (trailing, constant) = trailing { if let destination = trailing {
            self.trailingAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (centerX, constant) = centerX { if let destination = centerX {
            self.centerXAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (centerY, constant) = centerY { if let destination = centerY {
            self.centerYAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (firstBaseline, constant) = firstBaseline { if let destination = firstBaseline {
            self.firstBaselineAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (lastBaseline, constant) = lastBaseline { if let destination = lastBaseline {
            self.lastBaselineAnchor.constraint(equalTo: destination, constant: constant).isActive = true } }
        if let (width, multiplier, constant) = width { if let destination = width { if let multiplier = multiplier {
            self.widthAnchor.constraint(equalTo: destination, multiplier: multiplier, constant: constant).isActive = true } else {
            self.widthAnchor.constraint(equalTo: destination, constant: constant).isActive = true } } else {
            self.widthAnchor.constraint(equalToConstant: constant).isActive = true } }
        if let (height, multiplier, constant) = height { if let destination = height { if let multiplier = multiplier {
            self.heightAnchor.constraint(equalTo: destination, multiplier: multiplier, constant: constant).isActive = true } else {
            self.heightAnchor.constraint(equalTo: destination, constant: constant).isActive = true } } else {
            self.heightAnchor.constraint(equalToConstant: constant).isActive = true } }
    }
    
}
