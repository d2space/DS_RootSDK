# DS_RootSDK
more frameworks relationship Test

此demo演示的是:通过pods实现多Framework之间的依赖及相互调用。

/**
 * 测试代码：
 *
 * import UIKit
 *
 * import DS_RootSDK
 *
 * @objcMembers
 * class Bank: NSObject{
 *     var id: String?
 *     var name: String?
 * }
 *
 * @objcMembers
 * class Card: NSObject{
 *     var id: String?
 *    var name: String?
 *    var bank: Bank?
 * }
 *
 * @objcMembers
 * class User: NSObject{
 *     var name: String?
 *     var age: Int = 0
 *     var cards:[Card]?
 *     var card: Card?
 * }
 *
 *
 *
 * class ViewController: UIViewController {
 *     override func viewDidLoad() {
 *         super.viewDidLoad()
 *         let dic = ["name": "d2space",
 *                    "age": "22",
 *                    "cards":[["name":"联璧金融","id":"1"],["name":"联璧智仟汇","id": "2"]],
 *                    "card":["name": "乐口福", "id": "1005","bank":["id": "005","name": "工商银行"]]] as [String : Any]
 *         let u: User = DS_Register<User>.callDS_ModelSDK(dic)
 *         print((u.name)!)
 *         print((u.card?.name)!)
 *         print((u.card?.bank?.name)!)
 *     }

 *     override func didReceiveMemoryWarning() {
 *         super.didReceiveMemoryWarning()
 *         // Dispose of any resources that can be recreated.
 *     }
 * }
 *
 */
