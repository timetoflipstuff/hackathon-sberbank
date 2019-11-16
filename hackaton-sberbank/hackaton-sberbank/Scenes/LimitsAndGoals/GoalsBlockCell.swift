
import UIKit

struct Goal {
    var name: String
    var finance: Float
    var image: String
    //    var limit: Float?
    //    var income: Float?
}

final class GoalsBlockCell: UITableViewCell {
    
    static let id = "GoalsBlockCell"
    private let tableView = UITableView()
    public var goal = [Goal(name: "Mortgage", finance: 12000.49, image: "goalHome"),
                Goal(name: "Lets beach bumming", finance: 3.22, image: "goalHoliday"),
                Goal(name: "Want a car", finance: 100093.0, image: "goalCar"),
                Goal(name: "New Mac-book", finance: 5.0, image: "goalMac")]
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Default GoalsBlockCell Text"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    public func setupUI(tableHeight: CGFloat, tableWidth: CGFloat){
        tableView.frame = CGRect(x: 0.0, y: 0.0, width: tableWidth, height: tableHeight)
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        
        tableView.register(GoalsCell.self, forCellReuseIdentifier: GoalsCell.id)
        tableView.frame = CGRect(x: 0, y: 0, width: contentView.frame.maxX, height: 150.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .green
        contentView.addSubview(tableView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

    extension GoalsBlockCell: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return goal.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: GoalsCell.id, for: indexPath) as! GoalsCell
            
            
            let accMember = goal[indexPath.row]
            
            cell.nameLabel.text = accMember.name
            cell.balanceLabel.text = String(accMember.finance) + " руб"
            cell.imgView.image = UIImage(named: accMember.image)
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
}
