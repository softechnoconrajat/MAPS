import UIKit

var arrayList : [[Int]] = [[0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0], [0,0,0,0,0]]

func loopAcrossArray(_ array: [[Int]]) {
    for i in array {
        for j in i {
            print(j)
        }
    }
}


//MARK: - CreatePathBetweenNodes.
func createPathBetweenNodes(_ i: Int, _ j: Int) {
    if arrayList[i][j] != 1{
        arrayList[i][j] = 1
    } else {
        print("Path is already there.")
    }
    
}

//Delete path between nodes.

func deletePathBetweenNodes(_ i: Int, _ j: Int) {
    if arrayList[i][j] != 0 {
        arrayList[i][j] = 0
    } else {
        print("there is no path")
    }
}

//Creating Path for A

createPathBetweenNodes(0,1)
createPathBetweenNodes(0,2)
createPathBetweenNodes(0,3)

//Creating Path for B

createPathBetweenNodes(1,0)
createPathBetweenNodes(1,3)
createPathBetweenNodes(1,4)

//Creating Path for C

createPathBetweenNodes(2,0)
createPathBetweenNodes(2,3)

//Creating Path for D

createPathBetweenNodes(3,0)
createPathBetweenNodes(3,1)
createPathBetweenNodes(3,2)
createPathBetweenNodes(3,3)
createPathBetweenNodes(3,4)


//Creating Path for E

createPathBetweenNodes(4,1)
createPathBetweenNodes(4,3)

//print(arrayList)

//Adjacency List Example.

class LinkedList {
    
    var data: Int
    var link: LinkedList?
    
    init(data: Int) {
        self.data = data
    }
}

let A = LinkedList.init(data: 0)
let B = LinkedList.init(data: 1)
let C = LinkedList.init(data: 2)
let D = LinkedList.init(data: 3)
let E = LinkedList.init(data: 4)

var arrayAdjacencyList: [LinkedList] = [A, B, C, D, E]

func addingElementToLinkedList(_ index: Int, _ element: LinkedList) {
    var headOfList = arrayAdjacencyList[index]
    while headOfList.link != nil {
        headOfList = headOfList.link!
    }
    headOfList.link = LinkedList.init(data: element.data)
    print("Inserted Element: \(headOfList.link!.data) indexPath: \(index)")
}

//Adding to adjacency List A
addingElementToLinkedList(0, B)
addingElementToLinkedList(0, C)
addingElementToLinkedList(0, D)
addingElementToLinkedList(0, E)

//print("***")
addingElementToLinkedList(1, A)
addingElementToLinkedList(1, C)
addingElementToLinkedList(1, D)
addingElementToLinkedList(1, E)

//print("***")
//
//
addingElementToLinkedList(2, A)
addingElementToLinkedList(2, D)
addingElementToLinkedList(2, E)

//print("***")
//
addingElementToLinkedList(3, A)
addingElementToLinkedList(3, B)
addingElementToLinkedList(3, C)
addingElementToLinkedList(3, E)

//print("***")

addingElementToLinkedList(4, A)
addingElementToLinkedList(4, C)
addingElementToLinkedList(4, D)


func loopThroughAdjacencyList(_ head: LinkedList) {
    
    print("Head: \(head.data)")
    var node = head

    if node == nil {
        print("No element Found")
    }
    while node.link != nil {
        node = node.link!
        print("Linked Node: \(node.data)")
    }
    
    
}

loopThroughAdjacencyList(arrayAdjacencyList[0])
loopThroughAdjacencyList(arrayAdjacencyList[1])
loopThroughAdjacencyList(arrayAdjacencyList[2])
loopThroughAdjacencyList(arrayAdjacencyList[3])
loopThroughAdjacencyList(arrayAdjacencyList[4])

























