//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

let fontURL = Bundle.main.url(forResource: "Roboto-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(fontURL, CTFontManagerScope.process, nil)


class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
    
        
        let label1 = UILabel()
        label1.frame = CGRect(x: 350, y: 240, width: 745, height: 80)
        label1.font = UIFont(name: "HelveticaNeue", size: 50)
        label1.text = "Olá, que legal ter você aqui!"
        label1.textColor = .black
        
        /*for family in UIFont.familyNames {
            print("\(family)")
            for name in UIFont.fontNames(forFamilyName: family) {
                print(" \(name)")
            }
        }*/
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 350, y: 320, width: 500, height: 70)
        label2.font = UIFont(name: "HelveticaNeue", size: 50)
        label2.text = "Qual o seu nome?"
        label2.textColor = .black
        
        let okButton = UIButton()
        okButton.frame = CGRect(x: 1050, y: 640, width: 91, height: 72)
        okButton.setTitle("ok", for: .normal)
        okButton.setTitleColor(.white, for: .normal)
        okButton.backgroundColor = .myRed
        okButton.layer.masksToBounds = true
        okButton.layer.cornerRadius = 5
        okButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let textField = UITextField()
        textField.frame = CGRect(x: 290, y: 640, width: 719, height: 75)
        textField.backgroundColor = .white
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 2
        
        let baloom = UIImage(named: "Group 5" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 225, y: 150, width: 990, height: 350)
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(okButton)
        view.addSubview(textField)
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou ok")
        navigationController?.pushViewController(secondViewController, animated: false)
    }
    
    
}

class SecondViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite

        let label1 = UILabel()
        label1.frame = CGRect(x: 290, y: 210, width: 860, height: 80)
        label1.font = UIFont(name: "HelveticaNeue", size: 60)
        label1.text = "Adoramos o seu nome, Lucas!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 290, y: 270, width: 860, height: 230)
        label2.font = UIFont(name: "HelveticaNeue", size: 60)
        label2.text = "Agora queremos saber com quem você quer brincar de dançar?"
        label2.textColor = .black
        label2.lineBreakMode = .byWordWrapping
        label2.numberOfLines = 3
        
        let giButton = UIButton()
        giButton.frame = CGRect(x: 416, y: 700, width: 279, height: 78)
        giButton.setTitle("Gi", for: .normal)
        giButton.setTitleColor(.white, for: .normal)
        giButton.backgroundColor = .myRed
        giButton.layer.masksToBounds = true
        giButton.layer.cornerRadius = 5
        giButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let dedeButton = UIButton()
        dedeButton.frame = CGRect(x: 745, y: 700, width: 279, height: 78)
        dedeButton.setTitle("Dede", for: .normal)
        dedeButton.setTitleColor(.white, for: .normal)
        dedeButton.backgroundColor = .myRed
        dedeButton.layer.masksToBounds = true
        dedeButton.layer.cornerRadius = 5
        dedeButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let baloom = UIImage(named: "Group 5" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 100, y: 100, width: 1300, height: 500)
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(dedeButton)
        view.addSubview(giButton)
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou gi ou dede")
        navigationController?.pushViewController(thirdViewController, animated: false)
    }
}

class ThirdViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let groundBox = UIView()
        groundBox.frame = CGRect(x: 0, y: 550, width: 1440, height: 350)
        groundBox.backgroundColor = .myGround
        
        let actionBox = UILabel()
        actionBox.frame = CGRect(x: 631, y:15 , width: 178, height: 33)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pular"
        actionBox.font = UIFont(name: "HelveticaNeue", size: 20)
        actionBox.textAlignment = .center
        
        let danceButton = UIButton()
        danceButton.frame = CGRect(x: 561, y: 730, width: 318, height: 60)
        danceButton.setTitle("Entendi", for: .normal)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        view.addSubview(danceButton)
        
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou entendi")
        navigationController?.pushViewController(mainViewController, animated: false)
    }
}
class MainViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let groundBox = UIView()
        groundBox.frame = CGRect(x: 0, y: 550, width: 1440, height: 350)
        groundBox.backgroundColor = .myGround
        
        let instructionsBox = UIView()
        instructionsBox.frame = CGRect(x: -10, y: 150, width: 297, height: 500)
        instructionsBox.backgroundColor = .myYellow
        instructionsBox.layer.masksToBounds = true
        instructionsBox.layer.cornerRadius = 10
        
        let howToLabel = UILabel()
        howToLabel.text = "Como Fazer"
        howToLabel.font =  UIFont(name: "HelveticaNeue-Bold", size: 25)
        howToLabel.frame = CGRect(x: 65, y: 170, width: 156, height: 35)
        
        let instruction1 = UILabel()
        instruction1.frame = CGRect(x: 10, y: 210, width: 250, height: 80)
        instruction1.text = "1.Dobre um poucos os dois joelhos"
        instruction1.font = UIFont(name:"HelveticaNeue", size:20)
        instruction1.lineBreakMode = .byWordWrapping
        instruction1.numberOfLines = 2
        
        let instruction2 = UILabel()
        instruction2.frame = CGRect(x: 10, y: 280, width: 150, height: 40)
        instruction2.text = "2.Pule"
        instruction2.font = UIFont(name:"HelveticaNeue", size:20)
        
        /*let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 10, width: 30, height:30 )
        menuButton.backgroundColor = .myRed
        menuButton.layer.masksToBounds = true
        menuButton.layer.cornerRadius = 5*/
        
       let actionBox = UILabel()
        actionBox.frame = CGRect(x: 631, y:15 , width: 178, height: 33)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pular"
        actionBox.font = UIFont(name: "HelveticaNeue", size: 20)
        actionBox.textAlignment = .center
        
        let danceButton = UIButton()
        danceButton.frame = CGRect(x: 561, y: 670, width: 318, height: 60)
        danceButton.setTitle("Dança de novo, Gi", for: .normal)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        
        let hardButton = UIButton()
        hardButton.frame = CGRect(x: 397, y: 740, width: 318, height: 60)
        hardButton.setTitle("Esta muito difícil", for: .normal)
        hardButton.setTitleColor(.white, for: .normal)
        hardButton.backgroundColor = .myRed
        hardButton.layer.masksToBounds = true
        hardButton.layer.cornerRadius = 5
        
        let gotItButton = UIButton()
        gotItButton.frame = CGRect(x: 725, y: 740, width: 318, height: 60)
        gotItButton.setTitle("Consegui", for: .normal)
        gotItButton.setTitleColor(.white, for: .normal)
        gotItButton.backgroundColor = .myRed
        gotItButton.layer.masksToBounds = true
        gotItButton.layer.cornerRadius = 5
        
        //view.addSubview(menuButton)
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        view.addSubview(danceButton)
        view.addSubview(instructionsBox)
        view.addSubview(hardButton)
        view.addSubview(gotItButton)
        view.addSubview(howToLabel)
        view.addSubview(instruction1)
        view.addSubview(instruction2)
        
        self.view = view
    }
}

let navigation = UINavigationController(screenType: .mac)

let mainViewController = MainViewController()
let secondViewController = SecondViewController()
let thirdViewController = ThirdViewController()
let vc = MyViewController()

navigation.pushViewController(vc, animated: false)
navigation.navigationBar.isHidden = true

PlaygroundPage.current.needsIndefiniteExecution = true // Sets up the constant running of the playground so that the location can update properly

PlaygroundPage.current.liveView = navigation.scale(to:0.5)


