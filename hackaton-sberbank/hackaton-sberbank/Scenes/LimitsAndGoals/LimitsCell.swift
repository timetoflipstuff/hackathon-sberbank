
import UIKit

final class LimitsCell: UITableViewCell{
    
    static let id = "LimitsCell"
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Default LimitsCell Text"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    public func setupUI(mainText: String?){
        mainLabel.text = mainText
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        mainLabel.frame = self.contentView.frame
        mainLabel.center = self.contentView.center
        
        contentView.addSubview(mainLabel)
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
