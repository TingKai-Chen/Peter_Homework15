//
//  MainMenuTableViewController.swift
//  Peter_Homework15
//
//  Created by 陳庭楷 on 2018/11/30.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    
    @IBOutlet var constellationLabel: [UILabel]!
    
    var roles : [Role] = [Role(name:"水瓶座",image:"水瓶簡介",content:"水瓶座的人很聪明，他们最大的特点是创新，追求独一无二的生活，个人主义色彩很浓重的星座。他们对人友善又注重隐私。水瓶座绝对算得上是“友谊之星”，他喜欢结交每一类朋友，但是却很难与他们交心，那需要很长的时间。他们对自己的家人就显得冷淡和疏远很多了。") , Role(name:"雙魚座",image:"雙魚簡介",content:"双鱼座是十二宫最后一个星座，他集合了所有星座的优缺点于一身，同时受水象星座的情绪化影响，使他们原来复杂的性格又添加了更复杂的一笔。双鱼座的人最大的优点是有一颗善良的心，他们愿意帮助别人，甚至是牺牲自己。") , Role(name:"牡羊座",image:"牡羊簡介",content:"白羊座的人热情冲动、爱冒险、慷慨，天不怕地不怕。而且一旦下定决心，不到黄河心不死，排除万难也要达到目的。大部分属于白羊座的人的脾气都很差，不过只是炮仗颈，绝对不会放在心上的。") , Role(name:"金牛座",image:"金牛簡介",content:"金牛座是很保守的星座，喜欢稳定，不爱变动。在性格上则比较慢热，对工作、生活、环境都需要比较长的适应期。金牛座又往往是财富的象征，他们在投资理财方面常常有很独到的见解。") , Role(name:"雙子座",image:"雙子簡介",content:"双子座的人往往喜好新鲜事物，他们有着小聪明，但做事常常不太专一。与双子座的人聊天也许会让你觉得很兴奋，因为他们脑子中那些新鲜的、稀奇古怪的东西会让人充满好奇。也许是对新鲜事物的追求和好奇，会让人觉得他们很花心，其实不然，他们仅仅是喜欢新鲜而已。") , Role(name:"巨蟹座",image:"巨蟹簡介",content:"巨蟹座的人往往充满了爱心，他们将母性的本质发挥到了极限。对他们来说，最重要的东西是家庭。他们往往就像蟹一样，在充满坚硬的外壳下面是柔软的内心。巨蟹座是最执着的星座，他们对朋友、对家人非常忠实，做事也会一直坚持到底。") , Role(name:"獅子座",image:"獅子簡介",content:"狮子座的人热情、阳光、大方。这些是他们性格上最大的特色。与他们性格上的优点不同，他们爱面子、自信得有点儿自大，常常会很在乎别人对自己的看法，也常常会因此而使自己不快乐。") , Role(name:"處女座",image:"處女簡介",content:"处女座追求完美，吹毛求疵是他们的特性。多数的处女座都很谦虚，但也因此给自己造成很大的压力。处女座的人不喜欢闲着，对别人常常乐于服务。缺乏自信的处女座有时候组织能力较差，需要家人与朋友们的鼓励去推动他们。") , Role(name:"天枰座",image:"天秤簡介",content:"天秤座常常追求和平和谐的感觉，他们善于交谈，沟通能力极强是他们最大的优点。但他们最大的缺点，往往是犹豫不决。天秤座的人容易将自己的想法加诸到别人身上，天秤座的人要小心这点。天秤座女生常常希望他们的伴侣会时刻陪伴着她。") , Role(name:"天蠍座",image:"天蠍簡介",content:"天蝎座的人精力旺盛、热情、善妒，占有欲极强。他们想要每天过得非常充实，如果失去了目标，他们很难认真地投入精力。天蝎是记仇的，会不顾一切地打击仇人。他们的一个成功优点，就是他们一旦定了目标，就会不达目的誓不罢休。") , Role(name:"射手座",image:"射手簡介",content:"射手座的人就像那只在弦上的箭一样，他们主动出击。为人乐观、诚实、热情、喜欢挑战。射手是十二星座中的冒险家，热爱旅行、喜欢赌博。意志力薄弱是射手座天生的弱点，如果沉迷赌博与游戏，后果不堪设想。") , Role(name:"摩羯座",image:"摩羯簡介",content:"摩羯座是十二星座中最有耐心，行事最小心、也是最善良的星座。他们做事脚踏实地，也比较固执，不达目的是不会放手的。他们的忍耐力也是出奇的强大，同时也非常勤奋。他们心中总是背负着很多的责任感，但往往又很没有安全感，不会完全地相信别人。")]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var i = 0
        
        for label in self.constellationLabel {
            
            label.text = self.roles[i].name
            
            i += 1
            
        }
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender : Any?) {
        
        let controller = segue.destination as? AnswerViewController
        
        if let row = tableView.indexPathForSelectedRow?.row {
            
            controller?.role = self.roles[row]
            
        }
        
    }
        
    // MARK: - Table view data source


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
