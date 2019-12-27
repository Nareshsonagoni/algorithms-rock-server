
const searchList = [7, 8, 2, 5, 6, 9, 0];

function binary(searchItem) {
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

module.exports = binary;