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
        label1.frame = CGRect(x: 200, y: 210, width: 400, height: 30)
        label1.font = UIFont(name: "HelveticaNeue", size: 30)
        label1.text = "Olá, que legal ter você aqui!"
        label1.textColor = .black
        
        /*for family in UIFont.familyNames {
            print("\(family)")
            for name in UIFont.fontNames(forFamilyName: family) {
                print(" \(name)")
            }
        }*/
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 200, y: 240, width: 400, height: 30)
        label2.font = UIFont(name: "HelveticaNeue", size: 30)
        label2.text = "Qual o seu nome?"
        label2.textColor = .black
        
        let okButton = UIButton()
        okButton.frame = CGRect(x: 550, y: 500, width: 50, height: 31)
        okButton.setTitle("ok", for: .normal)
        okButton.setTitleColor(.white, for: .normal)
        okButton.backgroundColor = .myRed
        okButton.layer.masksToBounds = true
        okButton.layer.cornerRadius = 5
        okButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let textField = UITextField()
        textField.frame = CGRect(x: 200, y: 500, width: 320, height: 30)
        textField.backgroundColor = .white
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 2
        
        let baloom = UIImage(named: "Group 5" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 100, y: 150, width: 600, height: 200)
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(okButton)
        view.addSubview(textField)
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou ok")
        present(SecondViewController,animated: false,completion: nil)
    }
    
    
}

class secondViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite

        let label1 = UILabel()
        label1.frame = CGRect(x: 200, y: 210, width: 400, height: 30)
        label1.font = UIFont(name: "HelveticaNeue", size: 26)
        label1.text = "Adoramos o seu nome, Lucas!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 200, y: 240, width: 400, height: 30)
        label2.font = UIFont(name: "HelveticaNeue", size: 26)
        label2.text = "Agora queremos saber com quem você quer brincar de dançar?"
        label2.textColor = .black
        
        let giButton = UIButton()
        giButton.frame = CGRect(x: 275, y: 500, width: 100, height: 40)
        giButton.setTitle("Gi", for: .normal)
        giButton.setTitleColor(.white, for: .normal)
        giButton.backgroundColor = .myRed
        giButton.layer.masksToBounds = true
        giButton.layer.cornerRadius = 5
        giButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let dedeButton = UIButton()
        dedeButton.frame = CGRect(x: 425, y: 500, width: 100, height: 40)
        dedeButton.setTitle("Dede", for: .normal)
        dedeButton.setTitleColor(.white, for: .normal)
        dedeButton.backgroundColor = .myRed
        dedeButton.layer.masksToBounds = true
        dedeButton.layer.cornerRadius = 5
        dedeButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let baloom = UIImage(named: "Group 5" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 100, y: 100, width: 600, height: 300)
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(dedeButton)
        view.addSubview(giButton)
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou gi ou dede")
        present(ThirdViewController,animated: false,completion: nil)
    }
}

class thirdViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let groundBox = UIView()
        groundBox.frame = CGRect(x: 0, y: 350, width: 800, height: 300)
        groundBox.backgroundColor = .myGround
        
        let actionBox = UILabel()
        actionBox.frame = CGRect(x: 350, y:15 , width: 100, height: 20)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pular"
        actionBox.font = UIFont(name: "HelveticaNeue", size: 16)
        actionBox.textAlignment = .center
        
        let danceButton = UIButton()
        danceButton.frame = CGRect(x: 325, y: 450, width: 150, height: 30)
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
        present(MainViewController,animated: false,completion: nil)
    }
}
class mainViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let groundBox = UIView()
        groundBox.frame = CGRect(x: 0, y: 350, width: 800, height: 300)
        groundBox.backgroundColor = .myGround
        
        let instructionsBox = UIView()
        instructionsBox.frame = CGRect(x: -10, y: 150, width: 210, height: 300)
        instructionsBox.backgroundColor = .myYellow
        instructionsBox.layer.masksToBounds = true
        instructionsBox.layer.cornerRadius = 10
        
        let howToLabel = UILabel()
        howToLabel.text = "Como Fazer"
        howToLabel.font =  UIFont(name: "HelveticaNeue-Bold", size: 21)
        howToLabel.frame = CGRect(x: 26, y: 170, width: 150, height: 30)
        
        let instruction1 = UILabel()
        instruction1.frame = CGRect(x: 10, y: 200, width: 150, height: 30)
        instruction1.text = "1.Dobre um poucos dois joelhos"
        instruction1.font = UIFont(name:"HelveticaNeue", size:18)
        
        let instruction2 = UILabel()
        instruction2.frame = CGRect(x: 10, y: 220, width: 150, height: 30)
        instruction2.text = "2.Pule"
        instruction2.font = UIFont(name:"HelveticaNeue", size:18)
        
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 10, width: 30, height:30 )
        menuButton.backgroundColor = .myRed
        menuButton.layer.masksToBounds = true
        menuButton.layer.cornerRadius = 5
        
        let actionBox = UILabel()
        actionBox.frame = CGRect(x: 350, y:15 , width: 100, height: 20)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pular"
        actionBox.font = UIFont(name: "HelveticaNeue", size: 16)
        actionBox.textAlignment = .center
        
        let danceButton = UIButton()
        danceButton.frame = CGRect(x: 325, y: 450, width: 150, height: 30)
        danceButton.setTitle("Dança de novo, G", for: .normal)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        
        let hardButton = UIButton()
        hardButton.frame = CGRect(x: 240, y: 500, width: 150, height: 30)
        hardButton.setTitle("Esta muito difícil", for: .normal)
        hardButton.setTitleColor(.white, for: .normal)
        hardButton.backgroundColor = .myRed
        hardButton.layer.masksToBounds = true
        hardButton.layer.cornerRadius = 5
        
        let gotItButton = UIButton()
        gotItButton.frame = CGRect(x: 410, y: 500, width: 150, height: 30)
        gotItButton.setTitle("Consegui", for: .normal)
        gotItButton.setTitleColor(.white, for: .normal)
        gotItButton.backgroundColor = .myRed
        gotItButton.layer.masksToBounds = true
        gotItButton.layer.cornerRadius = 5
        
        view.addSubview(menuButton)
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

let MainViewController = mainViewController()
let SecondViewController = secondViewController()
let ThirdViewController = thirdViewController()
let vc = MyViewController()

vc.preferredContentSize = CGSize(width: 800, height: 600)
MainViewController.preferredContentSize = CGSize(width: 800, height: 600)
SecondViewController.preferredContentSize = CGSize(width: 800, height: 600)
ThirdViewController.preferredContentSize = CGSize(width: 800, height: 600)
ThirdViewController.modalPresentationStyle = .fullScreen
MainViewController.modalPresentationStyle = .fullScreen
SecondViewController.modalPresentationStyle = .fullScreen

PlaygroundPage.current.needsIndefiniteExecution = true // Sets up the constant running of the playground so that the location can update properly

PlaygroundPage.current.liveView = vc


