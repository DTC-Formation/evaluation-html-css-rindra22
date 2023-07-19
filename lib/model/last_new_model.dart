class LastNewModel{
    String? _image;
    String? _step;
    String? _title;
    String? _description;

    LastNewModel({String? image, String? step, String? title, String? description}){
        this._image = image;
        this._step = step;
        this._title = title;
        this._description = description;
    }

    static List<LastNewModel> list = [
        LastNewModel(
            image: "assets/images/image-retro-pcs.jpg",
            step: "01",
            title: "Reviving Retro PCs",
            description: "What happens when old PCs \n are given modern upgrades?",
        ),
        LastNewModel(
            image: "assets/images/image-top-laptops.jpg",
            step: "02",
            title: "Top 10 Laptops of 2022",
            description: "Our best picks for various \n needs and budgets.",
        ),
        LastNewModel(
            image: "assets/images/image-gaming-growth.jpg",
            step: "03",
            title: "The Growth of Gaming",
            description: "How the pandemic has \n sparked fresh opportunities.",
        ),
    ];

    String? get image => _image;

    set image(String? value) {
        _image = value;
    }

    String? get step => _step;

    set step(String? value) {
        _step = value;
    }

    String? get title => _title;

    set title(String? value) {
        _title = value;
    }

    String? get description => _description;

    set description(String? value) {
        _description = value;
    }
}