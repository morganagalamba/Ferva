//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation
import SpriteKit

let fontURL = Bundle.main.url(forResource: "Roboto-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(fontURL, CTFontManagerScope.process, nil)

let comecoNome1 = "dedeHiteste_"
let comecoNome2 = "Comp 2_"
let comecoNome3 = "Comp 4_"
var dedeHiAnimation : [UIImage] = []
var dedeJumpAnimation : [UIImage] = []
var dedeFrevoAnimation : [UIImage] = []
var aux = 0;

while aux<90 {
    
    let auxString = String(aux)
    
    if aux<22 {
        
        let dedeFrevo = UIImage(named: "\(comecoNome3)\(auxString).png")
        dedeFrevoAnimation.append(dedeFrevo!)
        
        if aux<15{
            let dedeHi = UIImage(named: "\(comecoNome1)\(auxString).png")
            dedeHiAnimation.append(dedeHi!)
        }
    }
    
    let dedeJump = UIImage(named: "\(comecoNome2)\(auxString).png")
    dedeJumpAnimation.append(dedeJump!)
        
    aux = aux + 1
}

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
                
        let dedeView = UIImageView(frame: CGRect(x: 820, y: 300, width: 1080, height: 920))

        
        dedeView.animationImages = dedeHiAnimation
        dedeView.animationDuration = 1.2
        
        let label1 = UILabel()
        label1.frame = CGRect(x: 350, y: 240, width: 745, height: 80)
        label1.font = UIFont(name: "HelveticaNeue", size: 50)
        label1.text = "Olá, que legal ter você aqui!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 350, y: 320, width: 500, height: 70)
        label2.font = UIFont(name: "HelveticaNeue", size: 50)
        label2.text = "Qual o seu nome?"
        label2.textColor = .black
        
        let okButton = UIButton()
        okButton.frame = CGRect(x: 1050, y: 640, width: 91, height: 72)
        okButton.setTitle("ok", for: .normal)
        okButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 40)
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
        
        let baloom = UIImage(named: "Group" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 225, y: 150, width: 990, height: 350)
        
        dedeView.startAnimating()
        
        
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(okButton)
        view.addSubview(textField)
        view.addSubview(dedeView)
        
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou ok")
        navigationController?.pushViewController(thirdViewController, animated: false)
    }
    
    
}

class ThirdViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let dedeView = UIImageView(frame: CGRect(x: 200, y: 30, width: 1080, height: 700))
        
        dedeView.animationImages = dedeHiAnimation
        dedeView.animationDuration = 1.5
        
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
        danceButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 40)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        
        dedeView.startAnimating()
        
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        view.addSubview(danceButton)
        view.addSubview(dedeView)
        
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
        
        let dedeView = UIImageView(frame: CGRect(x: 200, y: 30, width: 1080, height: 700))
        
        dedeView.animationImages = dedeJumpAnimation
        dedeView.animationDuration = 1.5
        
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
        
        /*let danceButton = UIButton()
        danceButton.frame = CGRect(x: 561, y: 670, width: 318, height: 60)
        danceButton.setTitle("Dança de novo, Gi", for: .normal)
        danceButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        */
        
        let hardButton = UIButton()
        hardButton.frame = CGRect(x: 397, y: 740, width: 318, height: 60)
        hardButton.setTitle("Esta muito difícil", for: .normal)
        hardButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        hardButton.setTitleColor(.white, for: .normal)
        hardButton.backgroundColor = .myRed
        hardButton.layer.masksToBounds = true
        hardButton.layer.cornerRadius = 5
        
        let gotItButton = UIButton()
        gotItButton.frame = CGRect(x: 725, y: 740, width: 318, height: 60)
        gotItButton.setTitle("Consegui", for: .normal)
        gotItButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        gotItButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        gotItButton.setTitleColor(.white, for: .normal)
        gotItButton.backgroundColor = .myRed
        gotItButton.layer.masksToBounds = true
        gotItButton.layer.cornerRadius = 5
        
        dedeView.startAnimating()
        //view.addSubview(menuButton)
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        //view.addSubview(danceButton)
        view.addSubview(instructionsBox)
        view.addSubview(hardButton)
        view.addSubview(gotItButton)
        view.addSubview(howToLabel)
        view.addSubview(instruction1)
        view.addSubview(instruction2)
        view.addSubview(dedeView)
        
        self.view = view
    }
    @objc func tapButton(){
        navigationController?.pushViewController(main2ViewController, animated: false)
    }
}

class Main2ViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let dedeView = UIImageView(frame: CGRect(x: 300, y: 200, width: 900, height: 500))
        
        dedeView.animationImages = dedeFrevoAnimation
        dedeView.animationDuration = 1.5
        
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
        instruction1.frame = CGRect(x: 10, y: 210, width: 250, height: 40)
        instruction1.text = "1.Pule"
        instruction1.font = UIFont(name:"HelveticaNeue", size:20)
        instruction1.lineBreakMode = .byWordWrapping
        instruction1.numberOfLines = 2
        
        let instruction2 = UILabel()
        instruction2.frame = CGRect(x: 10, y: 230, width: 250, height: 120)
        instruction2.text = "2.estique a perna direita para o lado com o calcanhar tocando no chão"
        instruction2.font = UIFont(name:"HelveticaNeue", size:20)
        instruction2.lineBreakMode = .byWordWrapping
        instruction2.numberOfLines = 3
        
        let instruction3 = UILabel()
        instruction3.frame = CGRect(x: 10, y: 330, width: 250, height: 40)
        instruction3.text = "3.Pule"
        instruction3.font = UIFont(name:"HelveticaNeue", size:20)
        instruction3.lineBreakMode = .byWordWrapping
        instruction3.numberOfLines = 2
        
        let instruction4 = UILabel()
        instruction4.frame = CGRect(x: 10, y: 350, width: 250, height: 120)
        instruction4.text = "4.estique a perna direita para frente com o calcanhar tocando no chão"
        instruction4.font = UIFont(name:"HelveticaNeue", size:20)
        instruction4.lineBreakMode = .byWordWrapping
        instruction4.numberOfLines = 3
        
        /*let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 10, width: 30, height:30 )
        menuButton.backgroundColor = .myRed
        menuButton.layer.masksToBounds = true
        menuButton.layer.cornerRadius = 5*/
        
       let actionBox = UILabel()
        actionBox.frame = CGRect(x: 570, y:15 , width: 300, height: 33)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pontilhando com a perna direita"
        actionBox.font = UIFont(name: "HelveticaNeue", size: 20)
        actionBox.textAlignment = .center
        
        /*let danceButton = UIButton()
        danceButton.frame = CGRect(x: 561, y: 670, width: 318, height: 60)
        danceButton.setTitle("Dança de novo, Gi", for: .normal)
        danceButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        danceButton.setTitleColor(.white, for: .normal)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        */
        
        let hardButton = UIButton()
        hardButton.frame = CGRect(x: 397, y: 740, width: 318, height: 60)
        hardButton.setTitle("Esta muito difícil", for: .normal)
        hardButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        hardButton.setTitleColor(.white, for: .normal)
        hardButton.backgroundColor = .myRed
        hardButton.layer.masksToBounds = true
        hardButton.layer.cornerRadius = 5
        
        let gotItButton = UIButton()
        gotItButton.frame = CGRect(x: 725, y: 740, width: 318, height: 60)
        gotItButton.setTitle("Consegui", for: .normal)
        gotItButton.titleLabel?.font =  UIFont(name: "HelveticaNeue", size: 30)
        gotItButton.setTitleColor(.white, for: .normal)
        gotItButton.backgroundColor = .myRed
        gotItButton.layer.masksToBounds = true
        gotItButton.layer.cornerRadius = 5
        
        dedeView.startAnimating()
        //view.addSubview(menuButton)
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        //view.addSubview(danceButton)
        view.addSubview(instructionsBox)
        view.addSubview(hardButton)
        view.addSubview(gotItButton)
        view.addSubview(howToLabel)
        view.addSubview(instruction1)
        view.addSubview(instruction2)
        view.addSubview(instruction3)
        view.addSubview(instruction4)
        view.addSubview(dedeView)
        
        self.view = view
    }
}


let navigation = UINavigationController(screenType: .mac)

let main2ViewController = Main2ViewController()
let mainViewController = MainViewController()
//let secondViewController = SecondViewController()
let thirdViewController = ThirdViewController()
let vc = MyViewController()

navigation.pushViewController(vc, animated: false)
navigation.navigationBar.isHidden = true

PlaygroundPage.current.needsIndefiniteExecution = true // Sets up the constant running of the playground so that the location can update properly

PlaygroundPage.current.liveView = navigation.scale(to:0.5)


/*
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
*/
