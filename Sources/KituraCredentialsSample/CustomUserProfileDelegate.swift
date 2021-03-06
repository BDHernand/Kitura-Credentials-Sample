/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Credentials

public class CustomUserProfileDelegate: UserProfileDelegate {
    public func update(userProfile: UserProfile, from dictionary: [String:Any]) {
        if let gender = dictionary["gender"] as? String {
            userProfile.extendedProperties["gender"] = gender
        }
    }
}
