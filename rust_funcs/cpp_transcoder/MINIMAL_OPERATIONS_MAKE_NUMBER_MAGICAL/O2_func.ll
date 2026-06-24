define noundef range(i32 0, 7) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_122 = load ptr, ptr %0, align 8, !nonnull !23
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_121 = load i64, ptr %1, align 8
  %_129 = getelementptr inbounds nuw i8, ptr %_122, i64 %_121
  %_7.i.i = icmp samesign eq i64 %_121, 0
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_122, i64 1
  %_7.i10.i = icmp samesign ne i64 %_121, 1
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_122, i64 2
  %_7.i17.i = icmp samesign ne i64 %_121, 2
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_122, i64 3
  %_7.i24.i = icmp samesign ne i64 %_121, 3
  br label %bb5.preheader

bb1.loopexit:                                     ; preds = %bb5.loopexit
  %_77 = icmp samesign ult i32 %iter.sroa.0.1521, 10
  %_82.0 = zext i1 %_77 to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1521, %_82.0
  br i1 %_77, label %bb5.preheader, label %bb4

bb5.preheader:                                    ; preds = %start, %bb1.loopexit
  %iter.sroa.0.1521 = phi i32 [ 1, %start ], [ %iter.sroa.0.1, %bb1.loopexit ]
  %ans.sroa.0.0520 = phi i32 [ 6, %start ], [ %ans.sroa.0.6, %bb1.loopexit ]
  %iter.sroa.0.0519 = phi i32 [ 0, %start ], [ %iter.sroa.0.1521, %bb1.loopexit ]
  br label %bb8.preheader

bb4:                                              ; preds = %bb1.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_122, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E.exit": ; preds = %bb4, %bb2.i.i.i3.i.i
  ret i32 %ans.sroa.0.6

bb5.loopexit:                                     ; preds = %bb8.loopexit
  %_84 = icmp samesign ult i32 %iter1.sroa.0.1518, 10
  %_89.0 = zext i1 %_84 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1518, %_89.0
  br i1 %_84, label %bb8.preheader, label %bb1.loopexit

bb8.preheader:                                    ; preds = %bb5.preheader, %bb5.loopexit
  %iter1.sroa.0.1518 = phi i32 [ 1, %bb5.preheader ], [ %iter1.sroa.0.1, %bb5.loopexit ]
  %ans.sroa.0.1517 = phi i32 [ %ans.sroa.0.0520, %bb5.preheader ], [ %ans.sroa.0.6, %bb5.loopexit ]
  %iter1.sroa.0.0516 = phi i32 [ 0, %bb5.preheader ], [ %iter1.sroa.0.1518, %bb5.loopexit ]
  %_22 = add nuw nsw i32 %iter1.sroa.0.0516, %iter.sroa.0.0519
  br label %bb11.preheader

bb8.loopexit:                                     ; preds = %bb11.loopexit
  %_91 = icmp samesign ult i32 %iter2.sroa.0.1515, 10
  %_96.0 = zext i1 %_91 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1515, %_96.0
  br i1 %_91, label %bb11.preheader, label %bb5.loopexit

bb11.preheader:                                   ; preds = %bb8.preheader, %bb8.loopexit
  %iter2.sroa.0.1515 = phi i32 [ 1, %bb8.preheader ], [ %iter2.sroa.0.1, %bb8.loopexit ]
  %ans.sroa.0.2514 = phi i32 [ %ans.sroa.0.1517, %bb8.preheader ], [ %ans.sroa.0.6, %bb8.loopexit ]
  %iter2.sroa.0.0513 = phi i32 [ 0, %bb8.preheader ], [ %iter2.sroa.0.1515, %bb8.loopexit ]
  %_21 = add nuw nsw i32 %_22, %iter2.sroa.0.0513
  br label %bb14.preheader

bb11.loopexit:                                    ; preds = %bb14.loopexit
  %_98 = icmp samesign ult i32 %iter3.sroa.0.1512, 10
  %_103.0 = zext i1 %_98 to i32
  %iter3.sroa.0.1 = add nuw nsw i32 %iter3.sroa.0.1512, %_103.0
  br i1 %_98, label %bb14.preheader, label %bb8.loopexit

bb14.preheader:                                   ; preds = %bb11.preheader, %bb11.loopexit
  %iter3.sroa.0.1512 = phi i32 [ 1, %bb11.preheader ], [ %iter3.sroa.0.1, %bb11.loopexit ]
  %ans.sroa.0.3511 = phi i32 [ %ans.sroa.0.2514, %bb11.preheader ], [ %ans.sroa.0.6, %bb11.loopexit ]
  %iter3.sroa.0.0510 = phi i32 [ 0, %bb11.preheader ], [ %iter3.sroa.0.1512, %bb11.loopexit ]
  br label %bb17.preheader

bb14.loopexit:                                    ; preds = %bb43
  %_105 = icmp samesign ult i32 %iter4.sroa.0.1509, 10
  %_110.0 = zext i1 %_105 to i32
  %iter4.sroa.0.1 = add nuw nsw i32 %iter4.sroa.0.1509, %_110.0
  br i1 %_105, label %bb17.preheader, label %bb11.loopexit

bb17.preheader:                                   ; preds = %bb14.preheader, %bb14.loopexit
  %iter4.sroa.0.1509 = phi i32 [ 1, %bb14.preheader ], [ %iter4.sroa.0.1, %bb14.loopexit ]
  %ans.sroa.0.4508 = phi i32 [ %ans.sroa.0.3511, %bb14.preheader ], [ %ans.sroa.0.6, %bb14.loopexit ]
  %iter4.sroa.0.0507 = phi i32 [ 0, %bb14.preheader ], [ %iter4.sroa.0.1509, %bb14.loopexit ]
  %_24 = add nuw nsw i32 %iter4.sroa.0.0507, %iter3.sroa.0.0510
  br label %bb18

bb18:                                             ; preds = %bb17.preheader, %bb43
  %iter5.sroa.0.1506 = phi i32 [ 1, %bb17.preheader ], [ %iter5.sroa.0.1, %bb43 ]
  %ans.sroa.0.5505 = phi i32 [ %ans.sroa.0.4508, %bb17.preheader ], [ %ans.sroa.0.6, %bb43 ]
  %iter5.sroa.0.0504 = phi i32 [ 0, %bb17.preheader ], [ %iter5.sroa.0.1506, %bb43 ]
  %_23 = add nuw nsw i32 %_24, %iter5.sroa.0.0504
  %_20 = icmp eq i32 %_21, %_23
  br i1 %_20, label %bb80, label %bb43

bb43:                                             ; preds = %bb136, %bb18
  %ans.sroa.0.6 = phi i32 [ %ans.sroa.0.5505, %bb18 ], [ %spec.select, %bb136 ]
  %_112 = icmp samesign ult i32 %iter5.sroa.0.1506, 10
  %_117.0 = zext i1 %_112 to i32
  %iter5.sroa.0.1 = add nuw nsw i32 %iter5.sroa.0.1506, %_117.0
  br i1 %_112, label %bb18, label %bb14.loopexit

cleanup:                                          ; preds = %bb135.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %self1.i.i.i.i1.i.i55 = load i64, ptr %s, align 8, !range !1046, !alias.scope !1068, !noalias !1071, !noundef !23
  %_6.i.i.i.i2.i.i56 = icmp eq i64 %self1.i.i.i.i1.i.i55, 0
  br i1 %_6.i.i.i.i2.i.i56, label %bb46, label %bb2.i.i.i3.i.i57

bb2.i.i.i3.i.i57:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_122, i64 noundef %self1.i.i.i.i1.i.i55, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1073
  br label %bb46

bb80:                                             ; preds = %bb18
  br i1 %_7.i.i, label %bb135.invoke, label %bb14.i

bb14.i:                                           ; preds = %bb80
  %x.i = load i8, ptr %_122, align 1, !noalias !1074, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1074, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %3 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb62.i

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb62.i

bb6.i:                                            ; preds = %bb4.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1074, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %4 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb78, label %bb62.i

bb78:                                             ; preds = %bb6.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1074, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %5 = or disjoint i32 %_27.i, %_25.i
  %.not38 = icmp eq i32 %5, 1114112
  br i1 %.not38, label %bb135.invoke, label %bb62.i, !prof !1077

bb62.i:                                           ; preds = %bb4.i, %bb6.i, %bb3.i, %bb78
  %_0.sroa.4.0.i532 = phi i32 [ %5, %bb78 ], [ %3, %bb4.i ], [ %4, %bb6.i ], [ %_7.i, %bb3.i ]
  %6 = icmp samesign ult i32 %_0.sroa.4.0.i532, 1114112
  tail call void @llvm.assume(i1 %6)
  %_27 = add nsw i32 %_0.sroa.4.0.i532, -48
  %_26.not = icmp ne i32 %_27, %iter.sroa.0.0519
  %. = zext i1 %_26.not to i32
  %_130.i = zext i8 %x.i to i64
  %7 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %7, align 1, !noalias !1078, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_122, i64 %slurp.i
  %.not.i = icmp uge i64 %_121, %slurp.i
  tail call void @llvm.assume(i1 %.not.i)
  %_7.i.i62 = icmp samesign eq i64 %_121, %slurp.i
  br i1 %_7.i.i62, label %bb135.invoke, label %bb14.i63

bb14.i63:                                         ; preds = %bb62.i
  %x.i65 = load i8, ptr %_19.i.i, align 1, !noalias !1081, !noundef !23
  %_6.i66 = icmp sgt i8 %x.i65, -1
  br i1 %_6.i66, label %bb3.i99, label %bb4.i67

bb4.i67:                                          ; preds = %bb14.i63
  %_18.i.i64 = getelementptr inbounds nuw i8, ptr %_19.i.i, i64 1
  %_30.i68 = and i8 %x.i65, 31
  %init.i69 = zext nneg i8 %_30.i68 to i32
  %_7.i10.i70 = icmp ne ptr %_18.i.i64, %_129
  tail call void @llvm.assume(i1 %_7.i10.i70)
  %y.i72 = load i8, ptr %_18.i.i64, align 1, !noalias !1081, !noundef !23
  %_34.i73 = shl nuw nsw i32 %init.i69, 6
  %_36.i74 = and i8 %y.i72, 63
  %_35.i75 = zext nneg i8 %_36.i74 to i32
  %8 = or disjoint i32 %_34.i73, %_35.i75
  %_13.i76 = icmp samesign ugt i8 %x.i65, -33
  br i1 %_13.i76, label %bb6.i79, label %bb62.i108.1

bb3.i99:                                          ; preds = %bb14.i63
  %_7.i100 = zext nneg i8 %x.i65 to i32
  br label %bb62.i108.1

bb6.i79:                                          ; preds = %bb4.i67
  %_18.i12.i71 = getelementptr inbounds nuw i8, ptr %_19.i.i, i64 2
  %_7.i17.i80 = icmp ne ptr %_18.i12.i71, %_129
  tail call void @llvm.assume(i1 %_7.i17.i80)
  %z.i82 = load i8, ptr %_18.i12.i71, align 1, !noalias !1081, !noundef !23
  %_40.i83 = shl nuw nsw i32 %_35.i75, 6
  %_42.i84 = and i8 %z.i82, 63
  %_41.i85 = zext nneg i8 %_42.i84 to i32
  %y_z.i86 = or disjoint i32 %_40.i83, %_41.i85
  %_20.i87 = shl nuw nsw i32 %init.i69, 12
  %9 = or disjoint i32 %y_z.i86, %_20.i87
  %_21.i88 = icmp samesign ugt i8 %x.i65, -17
  br i1 %_21.i88, label %bb88, label %bb62.i108.1

bb88:                                             ; preds = %bb6.i79
  %_18.i19.i81 = getelementptr inbounds nuw i8, ptr %_19.i.i, i64 3
  %_7.i24.i90 = icmp ne ptr %_18.i19.i81, %_129
  tail call void @llvm.assume(i1 %_7.i24.i90)
  %w.i92 = load i8, ptr %_18.i19.i81, align 1, !noalias !1081, !noundef !23
  %_26.i93 = shl nuw nsw i32 %init.i69, 18
  %_25.i94 = and i32 %_26.i93, 1835008
  %_46.i95 = shl nuw nsw i32 %y_z.i86, 6
  %_48.i96 = and i8 %w.i92, 63
  %_47.i97 = zext nneg i8 %_48.i96 to i32
  %_27.i98 = or disjoint i32 %_46.i95, %_47.i97
  %10 = or disjoint i32 %_27.i98, %_25.i94
  %.not40 = icmp eq i32 %10, 1114112
  br i1 %.not40, label %bb135.invoke, label %bb62.i108.1, !prof !1077

bb62.i108.1:                                      ; preds = %bb3.i99, %bb6.i79, %bb4.i67, %bb88
  %_0.sroa.4.0.i77.ph379 = phi i32 [ %10, %bb88 ], [ %_7.i100, %bb3.i99 ], [ %9, %bb6.i79 ], [ %8, %bb4.i67 ]
  %11 = icmp samesign ult i32 %_0.sroa.4.0.i77.ph379, 1114112
  tail call void @llvm.assume(i1 %11)
  %_35 = add nsw i32 %_0.sroa.4.0.i77.ph379, -48
  %_34.not = icmp eq i32 %_35, %iter1.sroa.0.0516
  %12 = select i1 %_26.not, i32 2, i32 1
  %spec.select412 = select i1 %_34.not, i32 %., i32 %12
  %gepdiff = sub nuw nsw i64 %_121, %slurp.i
  %_130.i110.1 = zext i8 %x.i65 to i64
  %13 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i110.1
  %_128.i111.1 = load i8, ptr %13, align 1, !noalias !1084, !noundef !23
  %slurp.i112.1 = zext i8 %_128.i111.1 to i64
  %_19.i.i113.1 = getelementptr inbounds nuw i8, ptr %_19.i.i, i64 %slurp.i112.1
  %.not.i114.1 = icmp uge i64 %gepdiff, %slurp.i112.1
  tail call void @llvm.assume(i1 %.not.i114.1)
  %_7.i.i120 = icmp eq ptr %_19.i.i113.1, %_129
  br i1 %_7.i.i120, label %bb135.invoke, label %bb14.i121

bb14.i121:                                        ; preds = %bb62.i108.1
  %x.i123 = load i8, ptr %_19.i.i113.1, align 1, !noalias !1087, !noundef !23
  %_6.i124 = icmp sgt i8 %x.i123, -1
  br i1 %_6.i124, label %bb3.i157, label %bb4.i125

bb4.i125:                                         ; preds = %bb14.i121
  %_18.i.i122 = getelementptr inbounds nuw i8, ptr %_19.i.i113.1, i64 1
  %_30.i126 = and i8 %x.i123, 31
  %init.i127 = zext nneg i8 %_30.i126 to i32
  %_7.i10.i128 = icmp ne ptr %_18.i.i122, %_129
  tail call void @llvm.assume(i1 %_7.i10.i128)
  %y.i130 = load i8, ptr %_18.i.i122, align 1, !noalias !1087, !noundef !23
  %_34.i131 = shl nuw nsw i32 %init.i127, 6
  %_36.i132 = and i8 %y.i130, 63
  %_35.i133 = zext nneg i8 %_36.i132 to i32
  %14 = or disjoint i32 %_34.i131, %_35.i133
  %_13.i134 = icmp samesign ugt i8 %x.i123, -33
  br i1 %_13.i134, label %bb6.i137, label %bb62.i166.2

bb3.i157:                                         ; preds = %bb14.i121
  %_7.i158 = zext nneg i8 %x.i123 to i32
  br label %bb62.i166.2

bb6.i137:                                         ; preds = %bb4.i125
  %_18.i12.i129 = getelementptr inbounds nuw i8, ptr %_19.i.i113.1, i64 2
  %_7.i17.i138 = icmp ne ptr %_18.i12.i129, %_129
  tail call void @llvm.assume(i1 %_7.i17.i138)
  %z.i140 = load i8, ptr %_18.i12.i129, align 1, !noalias !1087, !noundef !23
  %_40.i141 = shl nuw nsw i32 %_35.i133, 6
  %_42.i142 = and i8 %z.i140, 63
  %_41.i143 = zext nneg i8 %_42.i142 to i32
  %y_z.i144 = or disjoint i32 %_40.i141, %_41.i143
  %_20.i145 = shl nuw nsw i32 %init.i127, 12
  %15 = or disjoint i32 %y_z.i144, %_20.i145
  %_21.i146 = icmp samesign ugt i8 %x.i123, -17
  br i1 %_21.i146, label %bb98, label %bb62.i166.2

bb98:                                             ; preds = %bb6.i137
  %_18.i19.i139 = getelementptr inbounds nuw i8, ptr %_19.i.i113.1, i64 3
  %_7.i24.i148 = icmp ne ptr %_18.i19.i139, %_129
  tail call void @llvm.assume(i1 %_7.i24.i148)
  %w.i150 = load i8, ptr %_18.i19.i139, align 1, !noalias !1087, !noundef !23
  %_26.i151 = shl nuw nsw i32 %init.i127, 18
  %_25.i152 = and i32 %_26.i151, 1835008
  %_46.i153 = shl nuw nsw i32 %y_z.i144, 6
  %_48.i154 = and i8 %w.i150, 63
  %_47.i155 = zext nneg i8 %_48.i154 to i32
  %_27.i156 = or disjoint i32 %_46.i153, %_47.i155
  %16 = or disjoint i32 %_27.i156, %_25.i152
  %.not42 = icmp eq i32 %16, 1114112
  br i1 %.not42, label %bb135.invoke, label %bb62.i166.2, !prof !1077

bb62.i166.2:                                      ; preds = %bb98, %bb4.i125, %bb6.i137, %bb3.i157
  %_0.sroa.4.0.i135.ph387 = phi i32 [ %16, %bb98 ], [ %_7.i158, %bb3.i157 ], [ %15, %bb6.i137 ], [ %14, %bb4.i125 ]
  %17 = icmp samesign ult i32 %_0.sroa.4.0.i135.ph387, 1114112
  tail call void @llvm.assume(i1 %17)
  %_43 = add nsw i32 %_0.sroa.4.0.i135.ph387, -48
  %_42.not = icmp ne i32 %_43, %iter2.sroa.0.0513
  %18 = zext i1 %_42.not to i32
  %spec.select413 = add nuw nsw i32 %spec.select412, %18
  %19 = add nuw nsw i64 %slurp.i, %slurp.i112.1
  %gepdiff527 = sub nuw nsw i64 %_121, %19
  %_130.i168.2 = zext i8 %x.i123 to i64
  %20 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i168.2
  %_128.i169.2 = load i8, ptr %20, align 1, !noalias !1090, !noundef !23
  %slurp.i170.2 = zext i8 %_128.i169.2 to i64
  %_19.i.i171.2 = getelementptr inbounds nuw i8, ptr %_19.i.i113.1, i64 %slurp.i170.2
  %.not.i172.2 = icmp uge i64 %gepdiff527, %slurp.i170.2
  tail call void @llvm.assume(i1 %.not.i172.2)
  %_7.i.i178 = icmp eq ptr %_19.i.i171.2, %_129
  br i1 %_7.i.i178, label %bb135.invoke, label %bb14.i179

bb14.i179:                                        ; preds = %bb62.i166.2
  %x.i181 = load i8, ptr %_19.i.i171.2, align 1, !noalias !1093, !noundef !23
  %_6.i182 = icmp sgt i8 %x.i181, -1
  br i1 %_6.i182, label %bb3.i215, label %bb4.i183

bb4.i183:                                         ; preds = %bb14.i179
  %_18.i.i180 = getelementptr inbounds nuw i8, ptr %_19.i.i171.2, i64 1
  %_30.i184 = and i8 %x.i181, 31
  %init.i185 = zext nneg i8 %_30.i184 to i32
  %_7.i10.i186 = icmp ne ptr %_18.i.i180, %_129
  tail call void @llvm.assume(i1 %_7.i10.i186)
  %y.i188 = load i8, ptr %_18.i.i180, align 1, !noalias !1093, !noundef !23
  %_34.i189 = shl nuw nsw i32 %init.i185, 6
  %_36.i190 = and i8 %y.i188, 63
  %_35.i191 = zext nneg i8 %_36.i190 to i32
  %21 = or disjoint i32 %_34.i189, %_35.i191
  %_13.i192 = icmp samesign ugt i8 %x.i181, -33
  br i1 %_13.i192, label %bb6.i195, label %bb62.i224.3

bb3.i215:                                         ; preds = %bb14.i179
  %_7.i216 = zext nneg i8 %x.i181 to i32
  br label %bb62.i224.3

bb6.i195:                                         ; preds = %bb4.i183
  %_18.i12.i187 = getelementptr inbounds nuw i8, ptr %_19.i.i171.2, i64 2
  %_7.i17.i196 = icmp ne ptr %_18.i12.i187, %_129
  tail call void @llvm.assume(i1 %_7.i17.i196)
  %z.i198 = load i8, ptr %_18.i12.i187, align 1, !noalias !1093, !noundef !23
  %_40.i199 = shl nuw nsw i32 %_35.i191, 6
  %_42.i200 = and i8 %z.i198, 63
  %_41.i201 = zext nneg i8 %_42.i200 to i32
  %y_z.i202 = or disjoint i32 %_40.i199, %_41.i201
  %_20.i203 = shl nuw nsw i32 %init.i185, 12
  %22 = or disjoint i32 %y_z.i202, %_20.i203
  %_21.i204 = icmp samesign ugt i8 %x.i181, -17
  br i1 %_21.i204, label %bb108, label %bb62.i224.3

bb108:                                            ; preds = %bb6.i195
  %_18.i19.i197 = getelementptr inbounds nuw i8, ptr %_19.i.i171.2, i64 3
  %_7.i24.i206 = icmp ne ptr %_18.i19.i197, %_129
  tail call void @llvm.assume(i1 %_7.i24.i206)
  %w.i208 = load i8, ptr %_18.i19.i197, align 1, !noalias !1093, !noundef !23
  %_26.i209 = shl nuw nsw i32 %init.i185, 18
  %_25.i210 = and i32 %_26.i209, 1835008
  %_46.i211 = shl nuw nsw i32 %y_z.i202, 6
  %_48.i212 = and i8 %w.i208, 63
  %_47.i213 = zext nneg i8 %_48.i212 to i32
  %_27.i214 = or disjoint i32 %_46.i211, %_47.i213
  %23 = or disjoint i32 %_27.i214, %_25.i210
  %.not44 = icmp eq i32 %23, 1114112
  br i1 %.not44, label %bb135.invoke, label %bb62.i224.3, !prof !1077

bb62.i224.3:                                      ; preds = %bb3.i215, %bb6.i195, %bb4.i183, %bb108
  %_0.sroa.4.0.i193.ph395 = phi i32 [ %23, %bb108 ], [ %_7.i216, %bb3.i215 ], [ %22, %bb6.i195 ], [ %21, %bb4.i183 ]
  %24 = icmp samesign ult i32 %_0.sroa.4.0.i193.ph395, 1114112
  tail call void @llvm.assume(i1 %24)
  %_51 = add nsw i32 %_0.sroa.4.0.i193.ph395, -48
  %_50.not = icmp ne i32 %_51, %iter3.sroa.0.0510
  %25 = zext i1 %_50.not to i32
  %spec.select414 = add nuw nsw i32 %spec.select413, %25
  %26 = add nuw nsw i64 %slurp.i, %slurp.i112.1
  %27 = add nuw nsw i64 %26, %slurp.i170.2
  %gepdiff528 = sub nuw nsw i64 %_121, %27
  %_130.i226.3 = zext i8 %x.i181 to i64
  %28 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i226.3
  %_128.i227.3 = load i8, ptr %28, align 1, !noalias !1096, !noundef !23
  %slurp.i228.3 = zext i8 %_128.i227.3 to i64
  %_19.i.i229.3 = getelementptr inbounds nuw i8, ptr %_19.i.i171.2, i64 %slurp.i228.3
  %.not.i230.3 = icmp uge i64 %gepdiff528, %slurp.i228.3
  tail call void @llvm.assume(i1 %.not.i230.3)
  %_7.i.i236 = icmp eq ptr %_19.i.i229.3, %_129
  br i1 %_7.i.i236, label %bb135.invoke, label %bb14.i237

bb14.i237:                                        ; preds = %bb62.i224.3
  %x.i239 = load i8, ptr %_19.i.i229.3, align 1, !noalias !1099, !noundef !23
  %_6.i240 = icmp sgt i8 %x.i239, -1
  br i1 %_6.i240, label %bb3.i273, label %bb4.i241

bb4.i241:                                         ; preds = %bb14.i237
  %_18.i.i238 = getelementptr inbounds nuw i8, ptr %_19.i.i229.3, i64 1
  %_30.i242 = and i8 %x.i239, 31
  %init.i243 = zext nneg i8 %_30.i242 to i32
  %_7.i10.i244 = icmp ne ptr %_18.i.i238, %_129
  tail call void @llvm.assume(i1 %_7.i10.i244)
  %y.i246 = load i8, ptr %_18.i.i238, align 1, !noalias !1099, !noundef !23
  %_34.i247 = shl nuw nsw i32 %init.i243, 6
  %_36.i248 = and i8 %y.i246, 63
  %_35.i249 = zext nneg i8 %_36.i248 to i32
  %29 = or disjoint i32 %_34.i247, %_35.i249
  %_13.i250 = icmp samesign ugt i8 %x.i239, -33
  br i1 %_13.i250, label %bb6.i253, label %bb62.i282.4

bb3.i273:                                         ; preds = %bb14.i237
  %_7.i274 = zext nneg i8 %x.i239 to i32
  br label %bb62.i282.4

bb6.i253:                                         ; preds = %bb4.i241
  %_18.i12.i245 = getelementptr inbounds nuw i8, ptr %_19.i.i229.3, i64 2
  %_7.i17.i254 = icmp ne ptr %_18.i12.i245, %_129
  tail call void @llvm.assume(i1 %_7.i17.i254)
  %z.i256 = load i8, ptr %_18.i12.i245, align 1, !noalias !1099, !noundef !23
  %_40.i257 = shl nuw nsw i32 %_35.i249, 6
  %_42.i258 = and i8 %z.i256, 63
  %_41.i259 = zext nneg i8 %_42.i258 to i32
  %y_z.i260 = or disjoint i32 %_40.i257, %_41.i259
  %_20.i261 = shl nuw nsw i32 %init.i243, 12
  %30 = or disjoint i32 %y_z.i260, %_20.i261
  %_21.i262 = icmp samesign ugt i8 %x.i239, -17
  br i1 %_21.i262, label %bb118, label %bb62.i282.4

bb118:                                            ; preds = %bb6.i253
  %_18.i19.i255 = getelementptr inbounds nuw i8, ptr %_19.i.i229.3, i64 3
  %_7.i24.i264 = icmp ne ptr %_18.i19.i255, %_129
  tail call void @llvm.assume(i1 %_7.i24.i264)
  %w.i266 = load i8, ptr %_18.i19.i255, align 1, !noalias !1099, !noundef !23
  %_26.i267 = shl nuw nsw i32 %init.i243, 18
  %_25.i268 = and i32 %_26.i267, 1835008
  %_46.i269 = shl nuw nsw i32 %y_z.i260, 6
  %_48.i270 = and i8 %w.i266, 63
  %_47.i271 = zext nneg i8 %_48.i270 to i32
  %_27.i272 = or disjoint i32 %_46.i269, %_47.i271
  %31 = or disjoint i32 %_27.i272, %_25.i268
  %.not46 = icmp eq i32 %31, 1114112
  br i1 %.not46, label %bb135.invoke, label %bb62.i282.4, !prof !1077

bb62.i282.4:                                      ; preds = %bb118, %bb4.i241, %bb6.i253, %bb3.i273
  %_0.sroa.4.0.i251.ph403 = phi i32 [ %31, %bb118 ], [ %_7.i274, %bb3.i273 ], [ %30, %bb6.i253 ], [ %29, %bb4.i241 ]
  %32 = icmp samesign ult i32 %_0.sroa.4.0.i251.ph403, 1114112
  tail call void @llvm.assume(i1 %32)
  %_59 = add nsw i32 %_0.sroa.4.0.i251.ph403, -48
  %_58.not = icmp ne i32 %_59, %iter4.sroa.0.0507
  %33 = zext i1 %_58.not to i32
  %spec.select415 = add nuw nsw i32 %spec.select414, %33
  %34 = add nuw nsw i64 %slurp.i, %slurp.i112.1
  %35 = add nuw nsw i64 %34, %slurp.i170.2
  %36 = add nuw nsw i64 %35, %slurp.i228.3
  %gepdiff529 = sub nuw nsw i64 %_121, %36
  %_130.i284.4 = zext i8 %x.i239 to i64
  %37 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i284.4
  %_128.i285.4 = load i8, ptr %37, align 1, !noalias !1102, !noundef !23
  %slurp.i286.4 = zext i8 %_128.i285.4 to i64
  %_19.i.i287.4 = getelementptr inbounds nuw i8, ptr %_19.i.i229.3, i64 %slurp.i286.4
  %.not.i288.4 = icmp uge i64 %gepdiff529, %slurp.i286.4
  tail call void @llvm.assume(i1 %.not.i288.4)
  %_7.i.i294 = icmp eq ptr %_19.i.i287.4, %_129
  br i1 %_7.i.i294, label %bb135.invoke, label %bb14.i295

bb14.i295:                                        ; preds = %bb62.i282.4
  %x.i297 = load i8, ptr %_19.i.i287.4, align 1, !noalias !1105, !noundef !23
  %_6.i298 = icmp sgt i8 %x.i297, -1
  br i1 %_6.i298, label %bb3.i331, label %bb4.i299

bb4.i299:                                         ; preds = %bb14.i295
  %_18.i.i296 = getelementptr inbounds nuw i8, ptr %_19.i.i287.4, i64 1
  %_30.i300 = and i8 %x.i297, 31
  %init.i301 = zext nneg i8 %_30.i300 to i32
  %_7.i10.i302 = icmp ne ptr %_18.i.i296, %_129
  tail call void @llvm.assume(i1 %_7.i10.i302)
  %y.i304 = load i8, ptr %_18.i.i296, align 1, !noalias !1105, !noundef !23
  %_34.i305 = shl nuw nsw i32 %init.i301, 6
  %_36.i306 = and i8 %y.i304, 63
  %_35.i307 = zext nneg i8 %_36.i306 to i32
  %38 = or disjoint i32 %_34.i305, %_35.i307
  %_13.i308 = icmp samesign ugt i8 %x.i297, -33
  br i1 %_13.i308, label %bb6.i311, label %bb136

bb3.i331:                                         ; preds = %bb14.i295
  %_7.i332 = zext nneg i8 %x.i297 to i32
  br label %bb136

bb6.i311:                                         ; preds = %bb4.i299
  %_18.i12.i303 = getelementptr inbounds nuw i8, ptr %_19.i.i287.4, i64 2
  %_7.i17.i312 = icmp ne ptr %_18.i12.i303, %_129
  tail call void @llvm.assume(i1 %_7.i17.i312)
  %z.i314 = load i8, ptr %_18.i12.i303, align 1, !noalias !1105, !noundef !23
  %_40.i315 = shl nuw nsw i32 %_35.i307, 6
  %_42.i316 = and i8 %z.i314, 63
  %_41.i317 = zext nneg i8 %_42.i316 to i32
  %y_z.i318 = or disjoint i32 %_40.i315, %_41.i317
  %_20.i319 = shl nuw nsw i32 %init.i301, 12
  %39 = or disjoint i32 %y_z.i318, %_20.i319
  %_21.i320 = icmp samesign ugt i8 %x.i297, -17
  br i1 %_21.i320, label %bb128, label %bb136

bb128:                                            ; preds = %bb6.i311
  %_18.i19.i313 = getelementptr inbounds nuw i8, ptr %_19.i.i287.4, i64 3
  %_7.i24.i322 = icmp ne ptr %_18.i19.i313, %_129
  tail call void @llvm.assume(i1 %_7.i24.i322)
  %w.i324 = load i8, ptr %_18.i19.i313, align 1, !noalias !1105, !noundef !23
  %_26.i325 = shl nuw nsw i32 %init.i301, 18
  %_25.i326 = and i32 %_26.i325, 1835008
  %_46.i327 = shl nuw nsw i32 %y_z.i318, 6
  %_48.i328 = and i8 %w.i324, 63
  %_47.i329 = zext nneg i8 %_48.i328 to i32
  %_27.i330 = or disjoint i32 %_46.i327, %_47.i329
  %40 = or disjoint i32 %_27.i330, %_25.i326
  %.not48 = icmp eq i32 %40, 1114112
  br i1 %.not48, label %bb135.invoke, label %bb136, !prof !1077

bb136:                                            ; preds = %bb3.i331, %bb6.i311, %bb4.i299, %bb128
  %_0.sroa.4.0.i309.ph411 = phi i32 [ %40, %bb128 ], [ %_7.i332, %bb3.i331 ], [ %39, %bb6.i311 ], [ %38, %bb4.i299 ]
  %41 = icmp samesign ult i32 %_0.sroa.4.0.i309.ph411, 1114112
  tail call void @llvm.assume(i1 %41)
  %_67 = add nsw i32 %_0.sroa.4.0.i309.ph411, -48
  %_66.not = icmp ne i32 %_67, %iter5.sroa.0.0504
  %42 = zext i1 %_66.not to i32
  %spec.select416 = add nuw nsw i32 %spec.select415, %42
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.select416, i32 %ans.sroa.0.5505)
  br label %bb43

bb135.invoke:                                     ; preds = %bb128, %bb62.i282.4, %bb118, %bb62.i224.3, %bb108, %bb62.i166.2, %bb98, %bb62.i108.1, %bb88, %bb62.i, %bb78, %bb80
  %43 = phi ptr [ @alloc_5d720ddc212ec709992fdde3e458e7cd, %bb80 ], [ @alloc_5d720ddc212ec709992fdde3e458e7cd, %bb78 ], [ @alloc_69d61d2f8ab9d9293adeec17fc477d79, %bb62.i ], [ @alloc_69d61d2f8ab9d9293adeec17fc477d79, %bb88 ], [ @alloc_4aed0aaaa669fa15106df367ddb70a1e, %bb62.i108.1 ], [ @alloc_4aed0aaaa669fa15106df367ddb70a1e, %bb98 ], [ @alloc_65f7c902417ba190630bd60004763944, %bb62.i166.2 ], [ @alloc_65f7c902417ba190630bd60004763944, %bb108 ], [ @alloc_cdfc0eaeea3f758a16a25076d45405b5, %bb62.i224.3 ], [ @alloc_cdfc0eaeea3f758a16a25076d45405b5, %bb118 ], [ @alloc_c9fcc62b8fa1fb0279b975fd078c3abd, %bb62.i282.4 ], [ @alloc_c9fcc62b8fa1fb0279b975fd078c3abd, %bb128 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %43) #19
          to label %bb135.cont unwind label %cleanup

bb135.cont:                                       ; preds = %bb135.invoke
  unreachable

bb46:                                             ; preds = %bb2.i.i.i3.i.i57, %cleanup
  resume { ptr, i32 } %2
}
