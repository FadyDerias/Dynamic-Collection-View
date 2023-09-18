//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Fady on 30/01/2023.
//

import UIKit

class ScrollingViewController: UIViewController {
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    private var textArray = [
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do",
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do",
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do",
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do",
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do",
        "1 Short Text",
        "2 A very long text",
        "3 ojsapodjaspodjapsodjaposdjapsd",
        "4 oasjdpoasjdpoasjdpoajsdpoajsdpoajsdpoajspdoas",
        "5 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdj",
        "6 paosjdaspd",
        "7 lasjdopasjdpoasdjpoasdjoapsdj",
        "8 oasjdpoasjdpoasdjpoasjdpoasdjpoasjdop",
        "9 asjdpasjdpoasdpoasjdopajsdpoajspdojaspodjaposdjpasodjpaosdjaposdjiusadhuasidhiaushdauisdghasudgasoudgasiudgaisoudgaousidgasiudgaoisudgaiusdgaiousdgaouisdgaiusdgiausodgaoisudgaouisdgaisudgaiuosdgasoiudgausoidgaiuosdgaoiusdgaosiudgaisoudgasiudogasiudgasoiudgasiduogaosidugasoidugaosidugaosiudgaosiudgaoisudgaiousdgiaosugdioausgdoiausgdaiousgdiasudgoaiusdgaiusdgaiousdgaoisudgaisuodgasiudhoiaushdpashdpaoisdhopaishdiuashdiuashdiuashduaoisgdasgdiouasgdiupasgdipuagsdipuagspdugaspduigapisdugauspd",
        "10 aps[do"
    ]

    private var collectionViewLayout: UICollectionViewLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .absolute(self.view.bounds.width),
                heightDimension: .estimated(100))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)

            let groupSize = NSCollectionLayoutSize(
                widthDimension: .absolute(self.view.bounds.width),
                heightDimension: .estimated(100))

            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 1)

            return NSCollectionLayoutSection(group: group)
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue

        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.collectionViewLayout = collectionViewLayout
        collectionView.register(DynamicCollectionViewCell.self, forCellWithReuseIdentifier: DynamicCollectionViewCell.description())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ScrollingViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DynamicCollectionViewCell.description(), for: indexPath) as! DynamicCollectionViewCell
        cell.backgroundColor = indexPath.item % 2 == 0 ? UIColor.red : UIColor.blue
        cell.set(text: textArray[indexPath.item])
        return cell
    }
}
