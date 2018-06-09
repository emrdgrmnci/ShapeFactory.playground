import UIKit

public protocol IShape {
    func Draw() -> String
}

enum eShapeType {
    case eSquare
    case eCircle
    case eRectangle
}

public class ShapeFactory : IShape {
    
    public func Draw() -> String {
        return "Ciz"
    }
    
   
    
    func Draw(_ shapeType : eShapeType) -> IShape {
        
        switch shapeType {
            
        case eShapeType.eSquare:
            return Square()
            
        case eShapeType.eCircle:
            return Circle()
            
        case eShapeType.eRectangle:
            return Rectangle()
            
            
        }
    }
    
}

public class Square : IShape {
    public func Draw() -> String {
        return "Square is drawn"
    }
}

public class Circle : IShape {
    public func Draw() -> String {
        return "Circle is drawn"
}
}
public class Rectangle : IShape {
    public func Draw() -> String {
        return "Rectangle is drawn"
    }
}


let sf = ShapeFactory()

let shape = sf.Draw(eShapeType.eCircle)
print(shape.Draw())

let shape1 = sf.Draw(eShapeType.eSquare)
print(shape1.Draw())

let shape2 = sf.Draw(eShapeType.eRectangle)
print(shape2.Draw())
