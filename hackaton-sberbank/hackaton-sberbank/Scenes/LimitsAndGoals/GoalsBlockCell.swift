
import UIKit

final class GoalsBlockCell: UITableViewCell {
    
    static let id = "GoalsBlockCell"
    
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
        
        tableView.frame = CGRect(x: 0, y: 0, width: contentView.frame.maxX, height: 150.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .red
        contentView.addSubview(tableView)
        
        tableView.register(GoalsCell.self, forCellReuseIdentifier: GoalsCell.id)
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
    
       let tableView = UITableView()

}


    extension GoalsBlockCell: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 4
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: GoalsCell.id, for: indexPath) as! GoalsCell
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
        

    

}
