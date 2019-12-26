
const express = require('express');
const app = express();
const searchList = [7, 8, 2, 5, 1];

function binarySearch(searchItem) {
    const sortedSearchList = searchList.sort();
    let low = 0;
    let high = searchList.length - 1;

    while (low <= high) {
        const mid = Math.floor((low + high) / 2);
        const guess = sortedSearchList[mid];

        if (searchItem == guess) return mid;

        if (searchItem < guess)
            high = mid - 1;

        else
            low = mid + 1;
    }
    return null;
}

app.get('/api/binary_search/:item/', (req, res) => {
    const item = req.params.item;
    const searchResult = binarySearch(item);

    res.send(searchResult + '');
})

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}..`));