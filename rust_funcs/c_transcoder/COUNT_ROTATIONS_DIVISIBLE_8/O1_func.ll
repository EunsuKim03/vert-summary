define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %n.0, i64 noundef %n.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_117 = alloca [16 x i8], align 8
  %_110 = alloca [16 x i8], align 8
  %_86 = alloca [16 x i8], align 8
  %_75 = alloca [16 x i8], align 8
  %_68 = alloca [16 x i8], align 8
  %_61 = alloca [16 x i8], align 8
  switch i64 %n.1, label %bb10 [
    i64 1, label %bb2
    i64 2, label %bb9
  ]

bb2:                                              ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  %_7.i.i.i.i = icmp samesign ne i64 %n.1, 0
  %spec.select474.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select474 = getelementptr inbounds nuw i8, ptr %n.0, i64 %spec.select474.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit

bb14.i.i.i:                                       ; preds = %bb2
  %x.i.i.i = load i8, ptr %n.0, align 1, !noalias !1661, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %0 = icmp ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %0)
  %y.i.i.i = load i8, ptr %spec.select474, align 1, !noalias !1661, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select474, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1661, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select474, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1661, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit: ; preds = %bb2, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb2 ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit", !prof !1064

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_76c90879f448cf98f94768d9a8560b73) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit
  %_11 = and i32 %_0.sroa.0.0.i, 7
  %_10 = icmp eq i32 %_11, 0
  %. = zext i1 %_10 to i32
  br label %bb73

bb10:                                             ; preds = %start
  %_48 = add i64 %n.1, -2
  %_0.i.i.i498.not = icmp eq i64 %_48, 0
  br i1 %_0.i.i.i498.not, label %bb34, label %bb33.lr.ph

bb33.lr.ph:                                       ; preds = %bb10
  %_7.i276 = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  %4 = getelementptr inbounds nuw i8, ptr %_61, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_68, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_75, i64 8
  br label %bb33

bb9:                                              ; preds = %start
  %_7.i52 = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  %_7.i.i.i.i56 = icmp samesign ne i64 %n.1, 0
  %spec.select476.idx = zext i1 %_7.i.i.i.i56 to i64
  %spec.select476 = getelementptr inbounds nuw i8, ptr %n.0, i64 %spec.select476.idx
  br i1 %_7.i.i.i.i56, label %bb14.i.i.i62, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99

bb14.i.i.i62:                                     ; preds = %bb9
  %x.i.i.i63 = load i8, ptr %n.0, align 1, !noalias !1668, !noundef !15
  %_6.i.i.i64 = icmp sgt i8 %x.i.i.i63, -1
  br i1 %_6.i.i.i64, label %bb3.i.i.i97, label %bb4.i.i.i65

bb4.i.i.i65:                                      ; preds = %bb14.i.i.i62
  %_30.i.i.i66 = and i8 %x.i.i.i63, 31
  %init.i.i.i67 = zext nneg i8 %_30.i.i.i66 to i32
  %7 = icmp ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %7)
  %y.i.i.i71 = load i8, ptr %spec.select476, align 1, !noalias !1668, !noundef !15
  %_34.i.i.i72 = shl nuw nsw i32 %init.i.i.i67, 6
  %_36.i.i.i73 = and i8 %y.i.i.i71, 63
  %_35.i.i.i74 = zext nneg i8 %_36.i.i.i73 to i32
  %8 = or disjoint i32 %_34.i.i.i72, %_35.i.i.i74
  %_13.i.i.i75 = icmp ugt i8 %x.i.i.i63, -33
  br i1 %_13.i.i.i75, label %bb6.i.i.i77, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99

bb3.i.i.i97:                                      ; preds = %bb14.i.i.i62
  %_7.i.i.i98 = zext nneg i8 %x.i.i.i63 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99

bb6.i.i.i77:                                      ; preds = %bb4.i.i.i65
  %_18.i12.i.i.i70 = getelementptr inbounds nuw i8, ptr %spec.select476, i64 1
  %_7.i17.i.i.i78 = icmp ne ptr %_18.i12.i.i.i70, %_7.i52
  tail call void @llvm.assume(i1 %_7.i17.i.i.i78)
  %z.i.i.i80 = load i8, ptr %_18.i12.i.i.i70, align 1, !noalias !1668, !noundef !15
  %_40.i.i.i81 = shl nuw nsw i32 %_35.i.i.i74, 6
  %_42.i.i.i82 = and i8 %z.i.i.i80, 63
  %_41.i.i.i83 = zext nneg i8 %_42.i.i.i82 to i32
  %y_z.i.i.i84 = or disjoint i32 %_40.i.i.i81, %_41.i.i.i83
  %_20.i.i.i85 = shl nuw nsw i32 %init.i.i.i67, 12
  %9 = or disjoint i32 %y_z.i.i.i84, %_20.i.i.i85
  %_21.i.i.i86 = icmp ugt i8 %x.i.i.i63, -17
  br i1 %_21.i.i.i86, label %bb8.i.i.i87, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99

bb8.i.i.i87:                                      ; preds = %bb6.i.i.i77
  %_18.i19.i.i.i79 = getelementptr inbounds nuw i8, ptr %spec.select476, i64 2
  %_7.i24.i.i.i88 = icmp ne ptr %_18.i19.i.i.i79, %_7.i52
  tail call void @llvm.assume(i1 %_7.i24.i.i.i88)
  %w.i.i.i90 = load i8, ptr %_18.i19.i.i.i79, align 1, !noalias !1668, !noundef !15
  %_26.i.i.i91 = shl nuw nsw i32 %init.i.i.i67, 18
  %_25.i.i.i92 = and i32 %_26.i.i.i91, 1835008
  %_46.i.i.i93 = shl nuw nsw i32 %y_z.i.i.i84, 6
  %_48.i.i.i94 = and i8 %w.i.i.i90, 63
  %_47.i.i.i95 = zext nneg i8 %_48.i.i.i94 to i32
  %_27.i.i.i96 = or disjoint i32 %_46.i.i.i93, %_47.i.i.i95
  %10 = or disjoint i32 %_27.i.i.i96, %_25.i.i.i92
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99: ; preds = %bb9, %bb4.i.i.i65, %bb3.i.i.i97, %bb6.i.i.i77, %bb8.i.i.i87
  %_0.sroa.0.0.i76 = phi i32 [ %_7.i.i.i98, %bb3.i.i.i97 ], [ 1114112, %bb9 ], [ %10, %bb8.i.i.i87 ], [ %9, %bb6.i.i.i77 ], [ %8, %bb4.i.i.i65 ]
  %.not.i22 = icmp eq i32 %_0.sroa.0.0.i76, 1114112
  br i1 %.not.i22, label %bb2.i23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit24", !prof !1064

bb2.i23:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_856e329d0de934281fdf439787c75f15) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit99
  %11 = shl nuw nsw i32 %_0.sroa.0.0.i76, 1
  %_41.not.i.i = icmp samesign eq i64 %n.1, 0
  br i1 %_41.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147, label %bb28.i.i

bb28.i.i:                                         ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit24"
  %b15.i.i = load i8, ptr %n.0, align 1, !noalias !1675, !noundef !15
  %_130.i.i = zext i8 %b15.i.i to i64
  %12 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %12, align 1, !noalias !1675, !noundef !15
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %n.0, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %n.1, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_7.i.i.i.i104 = icmp samesign ne i64 %n.1, %slurp.i.i
  %spec.select478.idx = zext i1 %_7.i.i.i.i104 to i64
  %spec.select478 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i, i64 %spec.select478.idx
  br i1 %_7.i.i.i.i104, label %bb14.i.i.i110, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147

bb14.i.i.i110:                                    ; preds = %bb28.i.i
  %x.i.i.i111 = load i8, ptr %_19.i38.i.i, align 1, !noalias !1680, !noundef !15
  %_6.i.i.i112 = icmp sgt i8 %x.i.i.i111, -1
  br i1 %_6.i.i.i112, label %bb3.i.i.i145, label %bb4.i.i.i113

bb4.i.i.i113:                                     ; preds = %bb14.i.i.i110
  %_30.i.i.i114 = and i8 %x.i.i.i111, 31
  %init.i.i.i115 = zext nneg i8 %_30.i.i.i114 to i32
  %_7.i10.i.i.i117 = icmp ne ptr %spec.select478, %_7.i52
  tail call void @llvm.assume(i1 %_7.i10.i.i.i117)
  %y.i.i.i119 = load i8, ptr %spec.select478, align 1, !noalias !1680, !noundef !15
  %_34.i.i.i120 = shl nuw nsw i32 %init.i.i.i115, 6
  %_36.i.i.i121 = and i8 %y.i.i.i119, 63
  %_35.i.i.i122 = zext nneg i8 %_36.i.i.i121 to i32
  %13 = or disjoint i32 %_34.i.i.i120, %_35.i.i.i122
  %_13.i.i.i123 = icmp ugt i8 %x.i.i.i111, -33
  br i1 %_13.i.i.i123, label %bb6.i.i.i125, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147

bb3.i.i.i145:                                     ; preds = %bb14.i.i.i110
  %_7.i.i.i146 = zext nneg i8 %x.i.i.i111 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147

bb6.i.i.i125:                                     ; preds = %bb4.i.i.i113
  %_18.i12.i.i.i118 = getelementptr inbounds nuw i8, ptr %spec.select478, i64 1
  %_7.i17.i.i.i126 = icmp ne ptr %_18.i12.i.i.i118, %_7.i52
  tail call void @llvm.assume(i1 %_7.i17.i.i.i126)
  %z.i.i.i128 = load i8, ptr %_18.i12.i.i.i118, align 1, !noalias !1680, !noundef !15
  %_40.i.i.i129 = shl nuw nsw i32 %_35.i.i.i122, 6
  %_42.i.i.i130 = and i8 %z.i.i.i128, 63
  %_41.i.i.i131 = zext nneg i8 %_42.i.i.i130 to i32
  %y_z.i.i.i132 = or disjoint i32 %_40.i.i.i129, %_41.i.i.i131
  %_20.i.i.i133 = shl nuw nsw i32 %init.i.i.i115, 12
  %14 = or disjoint i32 %y_z.i.i.i132, %_20.i.i.i133
  %_21.i.i.i134 = icmp ugt i8 %x.i.i.i111, -17
  br i1 %_21.i.i.i134, label %bb8.i.i.i135, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147

bb8.i.i.i135:                                     ; preds = %bb6.i.i.i125
  %_18.i19.i.i.i127 = getelementptr inbounds nuw i8, ptr %spec.select478, i64 2
  %_7.i24.i.i.i136 = icmp ne ptr %_18.i19.i.i.i127, %_7.i52
  tail call void @llvm.assume(i1 %_7.i24.i.i.i136)
  %w.i.i.i138 = load i8, ptr %_18.i19.i.i.i127, align 1, !noalias !1680, !noundef !15
  %_26.i.i.i139 = shl nuw nsw i32 %init.i.i.i115, 18
  %_25.i.i.i140 = and i32 %_26.i.i.i139, 1835008
  %_46.i.i.i141 = shl nuw nsw i32 %y_z.i.i.i132, 6
  %_48.i.i.i142 = and i8 %w.i.i.i138, 63
  %_47.i.i.i143 = zext nneg i8 %_48.i.i.i142 to i32
  %_27.i.i.i144 = or disjoint i32 %_46.i.i.i141, %_47.i.i.i143
  %15 = or disjoint i32 %_27.i.i.i144, %_25.i.i.i140
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit24", %bb28.i.i, %bb4.i.i.i113, %bb3.i.i.i145, %bb6.i.i.i125, %bb8.i.i.i135
  %_0.sroa.0.0.i124 = phi i32 [ %_7.i.i.i146, %bb3.i.i.i145 ], [ 1114112, %bb28.i.i ], [ %15, %bb8.i.i.i135 ], [ %14, %bb6.i.i.i125 ], [ %13, %bb4.i.i.i113 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit24" ]
  %.not.i19 = icmp eq i32 %_0.sroa.0.0.i124, 1114112
  br i1 %.not.i19, label %bb2.i20, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit21", !prof !1064

bb2.i20:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_97bb1e267690345fb2d658ba3dc56f81) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit21": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit147
  %_21 = add nuw nsw i32 %_0.sroa.0.0.i124, %11
  %_41.not.i.i155 = icmp samesign eq i64 %n.1, 0
  br i1 %_41.not.i.i155, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211, label %bb28.i.i156

bb28.i.i156:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit21"
  %b15.i.i157 = load i8, ptr %n.0, align 1, !noalias !1685, !noundef !15
  %_130.i.i158 = zext i8 %b15.i.i157 to i64
  %16 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i158
  %_128.i.i159 = load i8, ptr %16, align 1, !noalias !1685, !noundef !15
  %slurp.i.i160 = zext i8 %_128.i.i159 to i64
  %_19.i38.i.i161 = getelementptr inbounds nuw i8, ptr %n.0, i64 %slurp.i.i160
  %.not28.i.i162 = icmp uge i64 %n.1, %slurp.i.i160
  tail call void @llvm.assume(i1 %.not28.i.i162)
  %_7.i.i.i.i167 = icmp samesign ne i64 %n.1, %slurp.i.i160
  %spec.select480.idx = zext i1 %_7.i.i.i.i167 to i64
  %spec.select480 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i161, i64 %spec.select480.idx
  br i1 %_7.i.i.i.i167, label %bb14.i.i.i173, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211

bb14.i.i.i173:                                    ; preds = %bb28.i.i156
  %x.i.i.i174 = load i8, ptr %_19.i38.i.i161, align 1, !noalias !1690, !noundef !15
  %_6.i.i.i175 = icmp sgt i8 %x.i.i.i174, -1
  br i1 %_6.i.i.i175, label %bb3.i.i.i208, label %bb4.i.i.i176

bb4.i.i.i176:                                     ; preds = %bb14.i.i.i173
  %_30.i.i.i177 = and i8 %x.i.i.i174, 31
  %init.i.i.i178 = zext nneg i8 %_30.i.i.i177 to i32
  %_7.i10.i.i.i180 = icmp ne ptr %spec.select480, %_7.i52
  tail call void @llvm.assume(i1 %_7.i10.i.i.i180)
  %y.i.i.i182 = load i8, ptr %spec.select480, align 1, !noalias !1690, !noundef !15
  %_34.i.i.i183 = shl nuw nsw i32 %init.i.i.i178, 6
  %_36.i.i.i184 = and i8 %y.i.i.i182, 63
  %_35.i.i.i185 = zext nneg i8 %_36.i.i.i184 to i32
  %17 = or disjoint i32 %_34.i.i.i183, %_35.i.i.i185
  %_13.i.i.i186 = icmp ugt i8 %x.i.i.i174, -33
  br i1 %_13.i.i.i186, label %bb6.i.i.i188, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211

bb3.i.i.i208:                                     ; preds = %bb14.i.i.i173
  %_7.i.i.i209 = zext nneg i8 %x.i.i.i174 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211

bb6.i.i.i188:                                     ; preds = %bb4.i.i.i176
  %_18.i12.i.i.i181 = getelementptr inbounds nuw i8, ptr %spec.select480, i64 1
  %_7.i17.i.i.i189 = icmp ne ptr %_18.i12.i.i.i181, %_7.i52
  tail call void @llvm.assume(i1 %_7.i17.i.i.i189)
  %z.i.i.i191 = load i8, ptr %_18.i12.i.i.i181, align 1, !noalias !1690, !noundef !15
  %_40.i.i.i192 = shl nuw nsw i32 %_35.i.i.i185, 6
  %_42.i.i.i193 = and i8 %z.i.i.i191, 63
  %_41.i.i.i194 = zext nneg i8 %_42.i.i.i193 to i32
  %y_z.i.i.i195 = or disjoint i32 %_40.i.i.i192, %_41.i.i.i194
  %_20.i.i.i196 = shl nuw nsw i32 %init.i.i.i178, 12
  %18 = or disjoint i32 %y_z.i.i.i195, %_20.i.i.i196
  %_21.i.i.i197 = icmp ugt i8 %x.i.i.i174, -17
  br i1 %_21.i.i.i197, label %bb8.i.i.i198, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211

bb8.i.i.i198:                                     ; preds = %bb6.i.i.i188
  %_18.i19.i.i.i190 = getelementptr inbounds nuw i8, ptr %spec.select480, i64 2
  %_7.i24.i.i.i199 = icmp ne ptr %_18.i19.i.i.i190, %_7.i52
  tail call void @llvm.assume(i1 %_7.i24.i.i.i199)
  %w.i.i.i201 = load i8, ptr %_18.i19.i.i.i190, align 1, !noalias !1690, !noundef !15
  %_26.i.i.i202 = shl nuw nsw i32 %init.i.i.i178, 18
  %_25.i.i.i203 = and i32 %_26.i.i.i202, 1835008
  %_46.i.i.i204 = shl nuw nsw i32 %y_z.i.i.i195, 6
  %_48.i.i.i205 = and i8 %w.i.i.i201, 63
  %_47.i.i.i206 = zext nneg i8 %_48.i.i.i205 to i32
  %_27.i.i.i207 = or disjoint i32 %_46.i.i.i204, %_47.i.i.i206
  %19 = or disjoint i32 %_27.i.i.i207, %_25.i.i.i203
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit21", %bb28.i.i156, %bb4.i.i.i176, %bb3.i.i.i208, %bb6.i.i.i188, %bb8.i.i.i198
  %_0.sroa.0.0.i187 = phi i32 [ %_7.i.i.i209, %bb3.i.i.i208 ], [ 1114112, %bb28.i.i156 ], [ %19, %bb8.i.i.i198 ], [ %18, %bb6.i.i.i188 ], [ %17, %bb4.i.i.i176 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit21" ]
  %.not.i16 = icmp eq i32 %_0.sroa.0.0.i187, 1114112
  br i1 %.not.i16, label %bb2.i17, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit18", !prof !1064

bb2.i17:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5122b0ec80278e339004b2fa58103191) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit18": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit211
  %20 = shl nuw nsw i32 %_0.sroa.0.0.i187, 1
  %spec.select482.idx = zext i1 %_7.i.i.i.i56 to i64
  %spec.select482 = getelementptr inbounds nuw i8, ptr %n.0, i64 %spec.select482.idx
  br i1 %_7.i.i.i.i56, label %bb14.i.i.i237, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275

bb14.i.i.i237:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit18"
  %x.i.i.i238 = load i8, ptr %n.0, align 1, !noalias !1695, !noundef !15
  %_6.i.i.i239 = icmp sgt i8 %x.i.i.i238, -1
  br i1 %_6.i.i.i239, label %bb3.i.i.i272, label %bb4.i.i.i240

bb4.i.i.i240:                                     ; preds = %bb14.i.i.i237
  %_30.i.i.i241 = and i8 %x.i.i.i238, 31
  %init.i.i.i242 = zext nneg i8 %_30.i.i.i241 to i32
  %21 = icmp ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %21)
  %y.i.i.i246 = load i8, ptr %spec.select482, align 1, !noalias !1695, !noundef !15
  %_34.i.i.i247 = shl nuw nsw i32 %init.i.i.i242, 6
  %_36.i.i.i248 = and i8 %y.i.i.i246, 63
  %_35.i.i.i249 = zext nneg i8 %_36.i.i.i248 to i32
  %22 = or disjoint i32 %_34.i.i.i247, %_35.i.i.i249
  %_13.i.i.i250 = icmp ugt i8 %x.i.i.i238, -33
  br i1 %_13.i.i.i250, label %bb6.i.i.i252, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275

bb3.i.i.i272:                                     ; preds = %bb14.i.i.i237
  %_7.i.i.i273 = zext nneg i8 %x.i.i.i238 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275

bb6.i.i.i252:                                     ; preds = %bb4.i.i.i240
  %_18.i12.i.i.i245 = getelementptr inbounds nuw i8, ptr %spec.select482, i64 1
  %_7.i17.i.i.i253 = icmp ne ptr %_18.i12.i.i.i245, %_7.i52
  tail call void @llvm.assume(i1 %_7.i17.i.i.i253)
  %z.i.i.i255 = load i8, ptr %_18.i12.i.i.i245, align 1, !noalias !1695, !noundef !15
  %_40.i.i.i256 = shl nuw nsw i32 %_35.i.i.i249, 6
  %_42.i.i.i257 = and i8 %z.i.i.i255, 63
  %_41.i.i.i258 = zext nneg i8 %_42.i.i.i257 to i32
  %y_z.i.i.i259 = or disjoint i32 %_40.i.i.i256, %_41.i.i.i258
  %_20.i.i.i260 = shl nuw nsw i32 %init.i.i.i242, 12
  %23 = or disjoint i32 %y_z.i.i.i259, %_20.i.i.i260
  %_21.i.i.i261 = icmp ugt i8 %x.i.i.i238, -17
  br i1 %_21.i.i.i261, label %bb8.i.i.i262, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275

bb8.i.i.i262:                                     ; preds = %bb6.i.i.i252
  %_18.i19.i.i.i254 = getelementptr inbounds nuw i8, ptr %spec.select482, i64 2
  %_7.i24.i.i.i263 = icmp ne ptr %_18.i19.i.i.i254, %_7.i52
  tail call void @llvm.assume(i1 %_7.i24.i.i.i263)
  %w.i.i.i265 = load i8, ptr %_18.i19.i.i.i254, align 1, !noalias !1695, !noundef !15
  %_26.i.i.i266 = shl nuw nsw i32 %init.i.i.i242, 18
  %_25.i.i.i267 = and i32 %_26.i.i.i266, 1835008
  %_46.i.i.i268 = shl nuw nsw i32 %y_z.i.i.i259, 6
  %_48.i.i.i269 = and i8 %w.i.i.i265, 63
  %_47.i.i.i270 = zext nneg i8 %_48.i.i.i269 to i32
  %_27.i.i.i271 = or disjoint i32 %_46.i.i.i268, %_47.i.i.i270
  %24 = or disjoint i32 %_27.i.i.i271, %_25.i.i.i267
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit18", %bb4.i.i.i240, %bb3.i.i.i272, %bb6.i.i.i252, %bb8.i.i.i262
  %_0.sroa.0.0.i251 = phi i32 [ %_7.i.i.i273, %bb3.i.i.i272 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit18" ], [ %24, %bb8.i.i.i262 ], [ %23, %bb6.i.i.i252 ], [ %22, %bb4.i.i.i240 ]
  %.not.i13 = icmp eq i32 %_0.sroa.0.0.i251, 1114112
  br i1 %.not.i13, label %bb2.i14, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit15", !prof !1064

bb2.i14:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c2d26314fbe9e960dd119625bdf6e0b7) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit15": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit275
  %_35 = add nuw nsw i32 %_0.sroa.0.0.i251, %20
  %_42 = and i32 %_21, 7
  %_41 = icmp eq i32 %_42, 0
  %spec.select = zext i1 %_41 to i32
  %_44 = and i32 %_35, 7
  %_43 = icmp eq i32 %_44, 0
  %25 = select i1 %_41, i32 2, i32 1
  %spec.select11 = select i1 %_43, i32 %25, i32 %spec.select
  br label %bb73

bb33:                                             ; preds = %bb33.lr.ph, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27"
  %spec.select484502 = phi i64 [ 1, %bb33.lr.ph ], [ %spec.select484, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27" ]
  %count.sroa.0.0501 = phi i32 [ 0, %bb33.lr.ph ], [ %spec.select9, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27" ]
  %iter.sroa.0.0500 = phi i64 [ 0, %bb33.lr.ph ], [ %spec.select484502, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27" ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_61)
  store ptr %n.0, ptr %_61, align 8
  store ptr %_7.i276, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_59 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_61, i64 noundef %iter.sroa.0.0500) #29
  %.not.i31 = icmp eq i32 %_59, 1114112
  br i1 %.not.i31, label %bb2.i32, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit33", !prof !1064

bb2.i32:                                          ; preds = %bb33
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_07ca4f0b52fc90b237596b549884eeaf) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit33": ; preds = %bb33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_68)
  store ptr %n.0, ptr %_68, align 8
  store ptr %_7.i276, ptr %5, align 8
  %_69 = add nuw i64 %iter.sroa.0.0500, 1
; call core::iter::traits::iterator::Iterator::nth
  %_66 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_68, i64 noundef %_69) #29
  %.not.i28 = icmp eq i32 %_66, 1114112
  br i1 %.not.i28, label %bb2.i29, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit30", !prof !1064

bb2.i29:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit33"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7717f7dc00ceaf31fc155c664372667c) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit30": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit33"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_75)
  store ptr %n.0, ptr %_75, align 8
  store ptr %_7.i276, ptr %6, align 8
  %_76 = add i64 %iter.sroa.0.0500, 2
; call core::iter::traits::iterator::Iterator::nth
  %_73 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_75, i64 noundef %_76) #29
  %.not.i25 = icmp eq i32 %_73, 1114112
  br i1 %.not.i25, label %bb2.i26, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27", !prof !1064

bb2.i26:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit30"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66b380e28b21d35f2e453f5bd91ffdbf) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit30"
  %26 = shl nuw nsw i32 %_59, 2
  %27 = shl nuw nsw i32 %_66, 1
  %_62 = add nuw nsw i32 %27, %26
  %_70 = add nuw nsw i32 %_62, %_73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_75)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_68)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_61)
  %_78 = and i32 %_70, 7
  %_77 = icmp eq i32 %_78, 0
  %28 = zext i1 %_77 to i32
  %spec.select9 = add i32 %count.sroa.0.0501, %28
  %_0.i.i.i = icmp ult i64 %spec.select484502, %_48
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select484 = add nuw i64 %spec.select484502, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb33, label %bb34

bb34:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27", %bb10
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb10 ], [ %spec.select9, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit27" ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_86)
  %_7.i279 = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  store ptr %n.0, ptr %_86, align 8
  %29 = getelementptr inbounds nuw i8, ptr %_86, i64 8
  store ptr %_7.i279, ptr %29, align 8
  %_87 = add i64 %n.1, -1
; call core::iter::traits::iterator::Iterator::nth
  %_84 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_86, i64 noundef %_87) #29
  %.not.i49 = icmp eq i32 %_84, 1114112
  br i1 %.not.i49, label %bb2.i50, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit51", !prof !1064

bb2.i50:                                          ; preds = %bb34
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_661e0ec82ec133bd588f4060f0269cb9) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit51": ; preds = %bb34
  %30 = shl nuw nsw i32 %_84, 2
  %_7.i.i.i.i299 = icmp samesign ne i64 %n.1, 0
  %spec.select486.idx = zext i1 %_7.i.i.i.i299 to i64
  %spec.select486 = getelementptr inbounds nuw i8, ptr %n.0, i64 %spec.select486.idx
  br i1 %_7.i.i.i.i299, label %bb14.i.i.i305, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343

bb14.i.i.i305:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit51"
  %x.i.i.i306 = load i8, ptr %n.0, align 1, !noalias !1702, !noundef !15
  %_6.i.i.i307 = icmp sgt i8 %x.i.i.i306, -1
  br i1 %_6.i.i.i307, label %bb3.i.i.i340, label %bb4.i.i.i308

bb4.i.i.i308:                                     ; preds = %bb14.i.i.i305
  %_30.i.i.i309 = and i8 %x.i.i.i306, 31
  %init.i.i.i310 = zext nneg i8 %_30.i.i.i309 to i32
  %31 = icmp ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %31)
  %y.i.i.i314 = load i8, ptr %spec.select486, align 1, !noalias !1702, !noundef !15
  %_34.i.i.i315 = shl nuw nsw i32 %init.i.i.i310, 6
  %_36.i.i.i316 = and i8 %y.i.i.i314, 63
  %_35.i.i.i317 = zext nneg i8 %_36.i.i.i316 to i32
  %32 = or disjoint i32 %_34.i.i.i315, %_35.i.i.i317
  %_13.i.i.i318 = icmp ugt i8 %x.i.i.i306, -33
  br i1 %_13.i.i.i318, label %bb6.i.i.i320, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343

bb3.i.i.i340:                                     ; preds = %bb14.i.i.i305
  %_7.i.i.i341 = zext nneg i8 %x.i.i.i306 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343

bb6.i.i.i320:                                     ; preds = %bb4.i.i.i308
  %_18.i12.i.i.i313 = getelementptr inbounds nuw i8, ptr %spec.select486, i64 1
  %_7.i17.i.i.i321 = icmp ne ptr %_18.i12.i.i.i313, %_7.i279
  tail call void @llvm.assume(i1 %_7.i17.i.i.i321)
  %z.i.i.i323 = load i8, ptr %_18.i12.i.i.i313, align 1, !noalias !1702, !noundef !15
  %_40.i.i.i324 = shl nuw nsw i32 %_35.i.i.i317, 6
  %_42.i.i.i325 = and i8 %z.i.i.i323, 63
  %_41.i.i.i326 = zext nneg i8 %_42.i.i.i325 to i32
  %y_z.i.i.i327 = or disjoint i32 %_40.i.i.i324, %_41.i.i.i326
  %_20.i.i.i328 = shl nuw nsw i32 %init.i.i.i310, 12
  %33 = or disjoint i32 %y_z.i.i.i327, %_20.i.i.i328
  %_21.i.i.i329 = icmp ugt i8 %x.i.i.i306, -17
  br i1 %_21.i.i.i329, label %bb8.i.i.i330, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343

bb8.i.i.i330:                                     ; preds = %bb6.i.i.i320
  %_18.i19.i.i.i322 = getelementptr inbounds nuw i8, ptr %spec.select486, i64 2
  %_7.i24.i.i.i331 = icmp ne ptr %_18.i19.i.i.i322, %_7.i279
  tail call void @llvm.assume(i1 %_7.i24.i.i.i331)
  %w.i.i.i333 = load i8, ptr %_18.i19.i.i.i322, align 1, !noalias !1702, !noundef !15
  %_26.i.i.i334 = shl nuw nsw i32 %init.i.i.i310, 18
  %_25.i.i.i335 = and i32 %_26.i.i.i334, 1835008
  %_46.i.i.i336 = shl nuw nsw i32 %y_z.i.i.i327, 6
  %_48.i.i.i337 = and i8 %w.i.i.i333, 63
  %_47.i.i.i338 = zext nneg i8 %_48.i.i.i337 to i32
  %_27.i.i.i339 = or disjoint i32 %_46.i.i.i336, %_47.i.i.i338
  %34 = or disjoint i32 %_27.i.i.i339, %_25.i.i.i335
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit51", %bb4.i.i.i308, %bb3.i.i.i340, %bb6.i.i.i320, %bb8.i.i.i330
  %_0.sroa.0.0.i319 = phi i32 [ %_7.i.i.i341, %bb3.i.i.i340 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit51" ], [ %34, %bb8.i.i.i330 ], [ %33, %bb6.i.i.i320 ], [ %32, %bb4.i.i.i308 ]
  %.not.i46 = icmp eq i32 %_0.sroa.0.0.i319, 1114112
  br i1 %.not.i46, label %bb2.i47, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit48", !prof !1064

bb2.i47:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6c7a754ecef0313288ee42bcfa0b9cb0) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit48": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit343
  %35 = shl nuw nsw i32 %_0.sroa.0.0.i319, 1
  %_88 = add nuw nsw i32 %35, %30
  %_41.not.i.i351 = icmp samesign eq i64 %n.1, 0
  br i1 %_41.not.i.i351, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407, label %bb28.i.i352

bb28.i.i352:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit48"
  %b15.i.i353 = load i8, ptr %n.0, align 1, !noalias !1709, !noundef !15
  %_130.i.i354 = zext i8 %b15.i.i353 to i64
  %36 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i354
  %_128.i.i355 = load i8, ptr %36, align 1, !noalias !1709, !noundef !15
  %slurp.i.i356 = zext i8 %_128.i.i355 to i64
  %_19.i38.i.i357 = getelementptr inbounds nuw i8, ptr %n.0, i64 %slurp.i.i356
  %.not28.i.i358 = icmp uge i64 %n.1, %slurp.i.i356
  tail call void @llvm.assume(i1 %.not28.i.i358)
  %_7.i.i.i.i363 = icmp samesign ne i64 %n.1, %slurp.i.i356
  %spec.select488.idx = zext i1 %_7.i.i.i.i363 to i64
  %spec.select488 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i357, i64 %spec.select488.idx
  br i1 %_7.i.i.i.i363, label %bb14.i.i.i369, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407

bb14.i.i.i369:                                    ; preds = %bb28.i.i352
  %x.i.i.i370 = load i8, ptr %_19.i38.i.i357, align 1, !noalias !1714, !noundef !15
  %_6.i.i.i371 = icmp sgt i8 %x.i.i.i370, -1
  br i1 %_6.i.i.i371, label %bb3.i.i.i404, label %bb4.i.i.i372

bb4.i.i.i372:                                     ; preds = %bb14.i.i.i369
  %_30.i.i.i373 = and i8 %x.i.i.i370, 31
  %init.i.i.i374 = zext nneg i8 %_30.i.i.i373 to i32
  %_7.i10.i.i.i376 = icmp ne ptr %spec.select488, %_7.i279
  tail call void @llvm.assume(i1 %_7.i10.i.i.i376)
  %y.i.i.i378 = load i8, ptr %spec.select488, align 1, !noalias !1714, !noundef !15
  %_34.i.i.i379 = shl nuw nsw i32 %init.i.i.i374, 6
  %_36.i.i.i380 = and i8 %y.i.i.i378, 63
  %_35.i.i.i381 = zext nneg i8 %_36.i.i.i380 to i32
  %37 = or disjoint i32 %_34.i.i.i379, %_35.i.i.i381
  %_13.i.i.i382 = icmp ugt i8 %x.i.i.i370, -33
  br i1 %_13.i.i.i382, label %bb6.i.i.i384, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407

bb3.i.i.i404:                                     ; preds = %bb14.i.i.i369
  %_7.i.i.i405 = zext nneg i8 %x.i.i.i370 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407

bb6.i.i.i384:                                     ; preds = %bb4.i.i.i372
  %_18.i12.i.i.i377 = getelementptr inbounds nuw i8, ptr %spec.select488, i64 1
  %_7.i17.i.i.i385 = icmp ne ptr %_18.i12.i.i.i377, %_7.i279
  tail call void @llvm.assume(i1 %_7.i17.i.i.i385)
  %z.i.i.i387 = load i8, ptr %_18.i12.i.i.i377, align 1, !noalias !1714, !noundef !15
  %_40.i.i.i388 = shl nuw nsw i32 %_35.i.i.i381, 6
  %_42.i.i.i389 = and i8 %z.i.i.i387, 63
  %_41.i.i.i390 = zext nneg i8 %_42.i.i.i389 to i32
  %y_z.i.i.i391 = or disjoint i32 %_40.i.i.i388, %_41.i.i.i390
  %_20.i.i.i392 = shl nuw nsw i32 %init.i.i.i374, 12
  %38 = or disjoint i32 %y_z.i.i.i391, %_20.i.i.i392
  %_21.i.i.i393 = icmp ugt i8 %x.i.i.i370, -17
  br i1 %_21.i.i.i393, label %bb8.i.i.i394, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407

bb8.i.i.i394:                                     ; preds = %bb6.i.i.i384
  %_18.i19.i.i.i386 = getelementptr inbounds nuw i8, ptr %spec.select488, i64 2
  %_7.i24.i.i.i395 = icmp ne ptr %_18.i19.i.i.i386, %_7.i279
  tail call void @llvm.assume(i1 %_7.i24.i.i.i395)
  %w.i.i.i397 = load i8, ptr %_18.i19.i.i.i386, align 1, !noalias !1714, !noundef !15
  %_26.i.i.i398 = shl nuw nsw i32 %init.i.i.i374, 18
  %_25.i.i.i399 = and i32 %_26.i.i.i398, 1835008
  %_46.i.i.i400 = shl nuw nsw i32 %y_z.i.i.i391, 6
  %_48.i.i.i401 = and i8 %w.i.i.i397, 63
  %_47.i.i.i402 = zext nneg i8 %_48.i.i.i401 to i32
  %_27.i.i.i403 = or disjoint i32 %_46.i.i.i400, %_47.i.i.i402
  %39 = or disjoint i32 %_27.i.i.i403, %_25.i.i.i399
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit48", %bb28.i.i352, %bb4.i.i.i372, %bb3.i.i.i404, %bb6.i.i.i384, %bb8.i.i.i394
  %_0.sroa.0.0.i383 = phi i32 [ %_7.i.i.i405, %bb3.i.i.i404 ], [ 1114112, %bb28.i.i352 ], [ %39, %bb8.i.i.i394 ], [ %38, %bb6.i.i.i384 ], [ %37, %bb4.i.i.i372 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit48" ]
  %.not.i43 = icmp eq i32 %_0.sroa.0.0.i383, 1114112
  br i1 %.not.i43, label %bb2.i44, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45", !prof !1064

bb2.i44:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1bbaccfdb315ab810732e2cd9a91233f) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit407
  %_95 = add nuw nsw i32 %_88, %_0.sroa.0.0.i383
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_86)
  %_102 = and i32 %_95, 7
  %_101 = icmp eq i32 %_102, 0
  %40 = zext i1 %_101 to i32
  %spec.select10 = add i32 %count.sroa.0.0.lcssa, %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_110)
  store ptr %n.0, ptr %_110, align 8
  %41 = getelementptr inbounds nuw i8, ptr %_110, i64 8
  store ptr %_7.i279, ptr %41, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_108 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_110, i64 noundef %_48) #29
  %.not.i40 = icmp eq i32 %_108, 1114112
  br i1 %.not.i40, label %bb2.i41, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit42", !prof !1064

bb2.i41:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_503f66f445a31a6214df48612252c5b7) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit42": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit45"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_117)
  store ptr %n.0, ptr %_117, align 8
  %42 = getelementptr inbounds nuw i8, ptr %_117, i64 8
  store ptr %_7.i279, ptr %42, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_115 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_117, i64 noundef %_87) #29
  %.not.i37 = icmp eq i32 %_115, 1114112
  br i1 %.not.i37, label %bb2.i38, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit39", !prof !1064

bb2.i38:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit42"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_318f256ea602318612a34d4824b5db38) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit39": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit42"
  %43 = shl nuw nsw i32 %_108, 2
  %44 = shl nuw nsw i32 %_115, 1
  %_111 = add nuw nsw i32 %44, %43
  %spec.select490.idx = zext i1 %_7.i.i.i.i299 to i64
  %spec.select490 = getelementptr inbounds nuw i8, ptr %n.0, i64 %spec.select490.idx
  br i1 %_7.i.i.i.i299, label %bb14.i.i.i435, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473

bb14.i.i.i435:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit39"
  %x.i.i.i436 = load i8, ptr %n.0, align 1, !noalias !1719, !noundef !15
  %_6.i.i.i437 = icmp sgt i8 %x.i.i.i436, -1
  br i1 %_6.i.i.i437, label %bb3.i.i.i470, label %bb4.i.i.i438

bb4.i.i.i438:                                     ; preds = %bb14.i.i.i435
  %_30.i.i.i439 = and i8 %x.i.i.i436, 31
  %init.i.i.i440 = zext nneg i8 %_30.i.i.i439 to i32
  %45 = icmp ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %45)
  %y.i.i.i444 = load i8, ptr %spec.select490, align 1, !noalias !1719, !noundef !15
  %_34.i.i.i445 = shl nuw nsw i32 %init.i.i.i440, 6
  %_36.i.i.i446 = and i8 %y.i.i.i444, 63
  %_35.i.i.i447 = zext nneg i8 %_36.i.i.i446 to i32
  %46 = or disjoint i32 %_34.i.i.i445, %_35.i.i.i447
  %_13.i.i.i448 = icmp ugt i8 %x.i.i.i436, -33
  br i1 %_13.i.i.i448, label %bb6.i.i.i450, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473

bb3.i.i.i470:                                     ; preds = %bb14.i.i.i435
  %_7.i.i.i471 = zext nneg i8 %x.i.i.i436 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473

bb6.i.i.i450:                                     ; preds = %bb4.i.i.i438
  %_18.i12.i.i.i443 = getelementptr inbounds nuw i8, ptr %spec.select490, i64 1
  %_7.i17.i.i.i451 = icmp ne ptr %_18.i12.i.i.i443, %_7.i279
  tail call void @llvm.assume(i1 %_7.i17.i.i.i451)
  %z.i.i.i453 = load i8, ptr %_18.i12.i.i.i443, align 1, !noalias !1719, !noundef !15
  %_40.i.i.i454 = shl nuw nsw i32 %_35.i.i.i447, 6
  %_42.i.i.i455 = and i8 %z.i.i.i453, 63
  %_41.i.i.i456 = zext nneg i8 %_42.i.i.i455 to i32
  %y_z.i.i.i457 = or disjoint i32 %_40.i.i.i454, %_41.i.i.i456
  %_20.i.i.i458 = shl nuw nsw i32 %init.i.i.i440, 12
  %47 = or disjoint i32 %y_z.i.i.i457, %_20.i.i.i458
  %_21.i.i.i459 = icmp ugt i8 %x.i.i.i436, -17
  br i1 %_21.i.i.i459, label %bb8.i.i.i460, label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473

bb8.i.i.i460:                                     ; preds = %bb6.i.i.i450
  %_18.i19.i.i.i452 = getelementptr inbounds nuw i8, ptr %spec.select490, i64 2
  %_7.i24.i.i.i461 = icmp ne ptr %_18.i19.i.i.i452, %_7.i279
  tail call void @llvm.assume(i1 %_7.i24.i.i.i461)
  %w.i.i.i463 = load i8, ptr %_18.i19.i.i.i452, align 1, !noalias !1719, !noundef !15
  %_26.i.i.i464 = shl nuw nsw i32 %init.i.i.i440, 18
  %_25.i.i.i465 = and i32 %_26.i.i.i464, 1835008
  %_46.i.i.i466 = shl nuw nsw i32 %y_z.i.i.i457, 6
  %_48.i.i.i467 = and i8 %w.i.i.i463, 63
  %_47.i.i.i468 = zext nneg i8 %_48.i.i.i467 to i32
  %_27.i.i.i469 = or disjoint i32 %_46.i.i.i466, %_47.i.i.i468
  %48 = or disjoint i32 %_27.i.i.i469, %_25.i.i.i465
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473

_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473: ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit39", %bb4.i.i.i438, %bb3.i.i.i470, %bb6.i.i.i450, %bb8.i.i.i460
  %_0.sroa.0.0.i449 = phi i32 [ %_7.i.i.i471, %bb3.i.i.i470 ], [ 1114112, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit39" ], [ %48, %bb8.i.i.i460 ], [ %47, %bb6.i.i.i450 ], [ %46, %bb4.i.i.i438 ]
  %.not.i34 = icmp eq i32 %_0.sroa.0.0.i449, 1114112
  br i1 %.not.i34, label %bb2.i35, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit36", !prof !1064

bb2.i35:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3f22e5e78c67a355fc5aed216c4f1637) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit36": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E.exit473
  %_118 = add nuw nsw i32 %_111, %_0.sroa.0.0.i449
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_117)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_110)
  %_125 = and i32 %_118, 7
  %_124 = icmp eq i32 %_125, 0
  %49 = zext i1 %_124 to i32
  %spec.select12 = add i32 %spec.select10, %49
  br label %bb73

bb73:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit36", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit15", %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit"
  %count.sroa.0.2 = phi i32 [ %., %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit" ], [ %spec.select12, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit36" ], [ %spec.select11, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd9e7eccfa6cff17fE.exit15" ]
  ret i32 %count.sroa.0.2
}
