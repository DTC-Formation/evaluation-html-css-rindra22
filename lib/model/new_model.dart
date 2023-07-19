class NewModel{
    String title;
    String description;

    NewModel({required this.title, required this.description});

    static List<NewModel> list = [
        NewModel(
            title: "Hydrogen VS Electric Cars",
            description: "Will hydrogen-fueled cars ever catch up to EVs?",
        ),
        NewModel(
            title: "The Downsides of AI Artistry",
            description: "What are the possible adverse effects of on-demand AI image generation?",
        ),
        NewModel(
            title: "Is VC Funding Drying Up?",
            description: "Private funding by VC firms is down 50% TOY. We take a look at what that means.",
        ),
    ];
}