//
//  ItemRepository.swift
//  KNURE TimeTable iOS
//
//  Created by Vladislav Chapaev on 23/02/2019.
//  Copyright © 2019 Vladislav Chapaev. All rights reserved.
//

import PromiseKit
import RxSwift

/// Access to timetable items
protocol ItemRepository {

    /// Observe items that been selected
    ///
    /// - Returns: Observable items list
    func localSelectedItems() -> Observable<[Item]>

    /// Save item in persistent store
    ///
    /// - Parameter item: timetable item
    /// - Returns: Promise with finished operation
    func localSaveItem(item: Item) -> Promise<Void>

    /// Delete item from persistent store
    ///
    /// - Parameter identifier: item identifier
    /// - Returns: Promise with finished operation
    func localDeleteItem(identifier: String) -> Promise<Void>

	func remoteItems(ofType: TimetableItem) -> Promise<Void>
}