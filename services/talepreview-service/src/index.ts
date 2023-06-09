//import express, { Request, Response } from 'express';
import express, { Request, Response } from 'express';
import * as path from 'path';

const talePreviews = [
    {
        id: "517ff77c-4f93-4f86-b181-d806d561c2a9",
        title: "Ein Tag bei der Feuerwehr",
        subtitle: "Lass dir von der Feuerwehr spannende Einblicke geben",
        grades: [3,4],
        icon: "/assets/thumbnail-517ff77c.jpg",
        author: "Maple Tales"
    },
    {
        id: "6b43d42a-58df-4b58-8163-055f3a5309c3",
        title: "Das Geheimnis von Loch Ness",
        subtitle: "Eine unerwartete Begegnung mit einem besonderen Seebewohner",
        grades: [1,2],
        icon: "/assets/thumbnail-6b43d42a.jpg",
        author: "Franz"
    },
    {
        id: "57cbdbac-79d8-46f6-ba2b-c20d130d7855",
        title: "Waldentdecker",
        subtitle: "Komm mit uns Pilze suchen und begegne den Waldbewohnern",
        grades: [2,3],
        icon: "/assets/thumbnail-57cbdbac.jpg",
        author: "Maple Tales"
    },
    {
        id: "c41e6bf8-a299-40af-b64b-ca48164aa75a",
        title: "Einen Tag Kapitän",
        subtitle: "Komm mit auf ein Piratenabenteuer",
        grades: [2,3],
        icon: "/assets/thumbnail-c41e6bf8.jpg",
        author: "Josh"
    }
]

const port = 9000
const app = express();
app.use(express.json());

// Serve static images from the "assets" directory
const imagesDirectory = path.join(__dirname, '..', 'assets');
app.use('/assets', express.static(imagesDirectory));

app.get('/talepreview', (req: Request, res: Response) => {
    res.status(201).json(talePreviews);
});
  
app.get('/talepreview/:id', (req: Request, res: Response) => {
    const userId = req.params.id;
    const user = talePreviews[0];

    if (user) {
      res.json(user);
    } else {
      res.status(404).json({ message: 'Preview not found' });
  }
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
