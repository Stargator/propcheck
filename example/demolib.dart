// Copyright 2012 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Author: Paul Brauner (polux@google.com)

part of demo;

List reverse(List xs) {
  List res = [];
  for (int i = xs.length - 1; i >= 0; i--) {
    res.add(xs[i]);
  }
  return res;
}

List append(List xs, List ys) {
  List res = [];
  res.addAll(xs);
  res.addAll(ys);
  return res;
}

