/*
 * Unless explicitly stated otherwise all files in this repository are licensed under the Apache License Version 2.0.
 * This product includes software developed at Datadog (https://www.datadoghq.com/).
 * Copyright 2019-2020 Datadog, Inc.
 */

@testable import Datadog

extension RUMUser: EquatableInTests {}
extension RUMConnectivity: EquatableInTests {}
extension RUMViewEvent: EquatableInTests {}
extension RUMResourceEvent: EquatableInTests {}
extension RUMActionEvent: EquatableInTests {}
extension RUMErrorEvent: EquatableInTests {}

extension RUMUser {
    static func mockRandom() -> RUMUser {
        return RUMUser(
            email: .mockRandom(),
            id: .mockRandom(),
            name: .mockRandom()
        )
    }
}

extension RUMConnectivity {
    static func mockRandom() -> RUMConnectivity {
        return RUMConnectivity(
            cellular: .init(
                carrierName: .mockRandom(),
                technology: .mockRandom()
            ),
            interfaces: [.bluetooth, .cellular].randomElements(),
            status: [.connected, .maybe, .notConnected].randomElement()!
        )
    }
}

extension RUMMethod {
    static func mockRandom() -> RUMMethod {
        return [.post, .get, .head, .put, .delete, .patch].randomElement()!
    }
}

extension RUMViewEvent {
    static func mockRandom() -> RUMViewEvent {
        return RUMViewEvent(
            dd: .init(documentVersion: .mockRandom()),
            application: .init(id: .mockRandom()),
            connectivity: .mockRandom(),
            date: .mockRandom(),
            service: .mockRandom(),
            session: .init(
                hasReplay: nil,
                id: .mockRandom(),
                type: .user
            ),
            usr: .mockRandom(),
            view: .init(
                action: .init(count: .mockRandom()),
                crash: .init(count: .mockRandom()),
                cumulativeLayoutShift: .mockRandom(),
                domComplete: .mockRandom(),
                domContentLoaded: .mockRandom(),
                domInteractive: .mockRandom(),
                error: .init(count: .mockRandom()),
                firstContentfulPaint: .mockRandom(),
                firstInputDelay: .mockRandom(),
                firstInputTime: .mockRandom(),
                id: .mockRandom(),
                isActive: .random(),
                largestContentfulPaint: .mockRandom(),
                loadEvent: .mockRandom(),
                loadingTime: .mockRandom(),
                loadingType: nil,
                longTask: .init(count: .mockRandom()),
                referrer: .mockRandom(),
                resource: .init(count: .mockRandom()),
                timeSpent: .mockRandom(),
                url: .mockRandom()
            )
        )
    }
}

extension RUMResourceEvent {
    static func mockRandom() -> RUMResourceEvent {
        return RUMResourceEvent(
            dd: .init(
                spanId: .mockRandom(),
                traceId: .mockRandom()
            ),
            action: .init(id: .mockRandom()),
            application: .init(id: .mockRandom()),
            connectivity: .mockRandom(),
            date: .mockRandom(),
            resource: .init(
                connect: .init(duration: .mockRandom(), start: .mockRandom()),
                dns: .init(duration: .mockRandom(), start: .mockRandom()),
                download: .init(duration: .mockRandom(), start: .mockRandom()),
                duration: .mockRandom(),
                firstByte: .init(duration: .mockRandom(), start: .mockRandom()),
                id: .mockRandom(),
                method: .mockRandom(),
                provider: .init(
                    domain: .mockRandom(),
                    name: .mockRandom(),
                    type: Bool.random() ? .firstParty : nil
                ),
                redirect: .init(duration: .mockRandom(), start: .mockRandom()),
                size: .mockRandom(),
                ssl: .init(duration: .mockRandom(), start: .mockRandom()),
                statusCode: .mockRandom(),
                type: [.xhr, .fetch, .image].randomElement()!,
                url: .mockRandom()
            ),
            service: .mockRandom(),
            session: .init(
                hasReplay: nil,
                id: .mockRandom(),
                type: .user
            ),
            usr: .mockRandom(),
            view: .init(
                id: .mockRandom(),
                referrer: .mockRandom(),
                url: .mockRandom()
            )
        )
    }
}

extension RUMActionEvent {
    static func mockRandom() -> RUMActionEvent {
        return RUMActionEvent(
            dd: .init(),
            action: .init(
                crash: .init(count: .mockRandom()),
                error: .init(count: .mockRandom()),
                id: .mockRandom(),
                loadingTime: .mockRandom(),
                longTask: .init(count: .mockRandom()),
                resource: .init(count: .mockRandom()),
                target: .init(name: .mockRandom()),
                type: [.tap, .swipe, .scroll].randomElement()!
            ),
            application: .init(id: .mockRandom()),
            connectivity: .mockRandom(),
            date: .mockRandom(),
            service: .mockRandom(),
            session: .init(
                hasReplay: nil,
                id: .mockRandom(),
                type: .user
            ),
            usr: .mockRandom(),
            view: .init(
                id: .mockRandom(),
                referrer: .mockRandom(),
                url: .mockRandom()
            )
        )
    }
}

extension RUMErrorEvent {
    static func mockRandom() -> RUMErrorEvent {
        return RUMErrorEvent(
            dd: .init(),
            action: .init(id: .mockRandom()),
            application: .init(id: .mockRandom()),
            connectivity: .mockRandom(),
            date: .mockRandom(),
            error: .init(
                isCrash: .random(),
                message: .mockRandom(),
                resource: .init(
                    method: .mockRandom(),
                    provider: .init(
                        domain: .mockRandom(),
                        name: .mockRandom(),
                        type: Bool.random() ? .firstParty : nil
                    ),
                    statusCode: .mockRandom(),
                    url: .mockRandom()
                ),
                source: [.source, .network, .custom].randomElement()!,
                stack: .mockRandom(),
                type: .mockRandom()
            ),
            service: .mockRandom(),
            session: .init(
                hasReplay: nil,
                id: .mockRandom(),
                type: .user
            ),
            usr: .mockRandom(),
            view: .init(
                id: .mockRandom(),
                referrer: .mockRandom(),
                url: .mockRandom()
            )
        )
    }
}
