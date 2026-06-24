define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_142 = alloca [16 x i8], align 8
  %_133 = alloca [16 x i8], align 8
  %_103 = alloca [16 x i8], align 8
  %_90 = alloca [16 x i8], align 8
  %_81 = alloca [16 x i8], align 8
  %_72 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  switch i64 %_0.i, label %bb11 [
    i64 1, label %bb2
    i64 2, label %bb10
  ]

cleanup:                                          ; preds = %bb2.i62.invoke
  %1 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE"(ptr noalias noundef align 8 dereferenceable(24) %n) #29
          to label %common.resume unwind label %terminate

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i = load ptr, ptr %2, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i469 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %_7.i.i.i470 = icmp samesign ne i64 %_0.i, 0
  %_10.sroa.0.0.idx = zext i1 %_7.i.i.i470 to i64
  %_10.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_10.sroa.0.0.idx
  br i1 %_7.i.i.i470, label %bb14.i.i, label %bb5

bb11:                                             ; preds = %start
  %_59 = add nsw i64 %_0.i, -2
  %_0.i.i.i487.not = icmp eq i64 %_59, 0
  br i1 %_0.i.i.i487.not, label %bb39, label %bb38.lr.ph

bb38.lr.ph:                                       ; preds = %bb11
  %3 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i67 = load ptr, ptr %3, align 8, !alias.scope !1669, !nonnull !15, !noundef !15
  %_7.i196 = getelementptr inbounds nuw i8, ptr %_6.i.i67, i64 %_0.i
  %4 = getelementptr inbounds nuw i8, ptr %_72, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_81, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_90, i64 8
  br label %bb38

bb10:                                             ; preds = %start
  %7 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i65 = load ptr, ptr %7, align 8, !alias.scope !1674, !nonnull !15, !noundef !15
  %_7.i203 = getelementptr inbounds nuw i8, ptr %_6.i.i65, i64 %_0.i
  %_7.i.i.i.i222 = icmp samesign ne i64 %_0.i, 0
  %_23.sroa.0.0.idx = zext i1 %_7.i.i.i.i222 to i64
  %_23.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i65, i64 %_23.sroa.0.0.idx
  br i1 %_7.i.i.i.i222, label %bb14.i.i.i228, label %bb14

bb38:                                             ; preds = %bb38.lr.ph, %bb51
  %spec.select473491 = phi i64 [ 1, %bb38.lr.ph ], [ %spec.select473, %bb51 ]
  %count.sroa.0.0490 = phi i32 [ 0, %bb38.lr.ph ], [ %spec.select10, %bb51 ]
  %iter.sroa.0.0489 = phi i64 [ 0, %bb38.lr.ph ], [ %spec.select473491, %bb51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_72)
  store ptr %_6.i.i67, ptr %_72, align 8
  store ptr %_7.i196, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_70 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_72, i64 noundef %iter.sroa.0.0489)
  %.not.i37 = icmp eq i32 %_70, 1114112
  br i1 %.not.i37, label %bb2.i62.invoke, label %bb43, !prof !1064

bb39:                                             ; preds = %bb51, %bb11
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb11 ], [ %spec.select10, %bb51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_103)
  %8 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i69 = load ptr, ptr %8, align 8, !alias.scope !1679, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i69, i64 %_0.i
  store ptr %_6.i.i69, ptr %_103, align 8
  %9 = getelementptr inbounds nuw i8, ptr %_103, i64 8
  store ptr %_7.i, ptr %9, align 8
  %_106 = add nsw i64 %_0.i, -1
; call core::iter::traits::iterator::Iterator::nth
  %_101 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_103, i64 noundef %_106)
  %.not.i61 = icmp eq i32 %_101, 1114112
  br i1 %.not.i61, label %bb2.i62.invoke, label %bb58, !prof !1064

bb2.i62.invoke:                                   ; preds = %bb47, %bb43, %bb38, %bb5, %bb26, %bb22, %bb18, %bb14, %bb80, %bb73, %bb66, %bb65, %bb61, %bb39
  %10 = phi ptr [ @alloc_aff04ca7ece2266b4e912ca2610a3fe7, %bb39 ], [ @alloc_76d73a58eed2b39d12bcc65fddb3dcf0, %bb61 ], [ @alloc_a26379ff7ed3c4897352a8231dbc7da9, %bb65 ], [ @alloc_5c186e71de15f38f7620dd99b769c1c3, %bb66 ], [ @alloc_5c64ffd5cf41e19f1a0a07197133a42e, %bb73 ], [ @alloc_cf4e2ad24a3eb23b6280279b1dd3f575, %bb80 ], [ @alloc_47adf347256eda21cdab651ed92f6757, %bb14 ], [ @alloc_1253c86776c1fc22861c297c6439ab08, %bb18 ], [ @alloc_aa83010b9d2da258e580147548dfb862, %bb22 ], [ @alloc_d1414eac9adaf7541d04b7fdd22970e4, %bb26 ], [ @alloc_a98e95e3d04bc205aef1a7edcb399cd1, %bb5 ], [ @alloc_c60424e091d1bd56632151c04195edfa, %bb47 ], [ @alloc_1db0fa8dcd1703b9f1024addf5345df1, %bb43 ], [ @alloc_605b0453e1ec064f253990cf346c53bb, %bb38 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #26
          to label %bb2.i62.cont unwind label %cleanup

bb2.i62.cont:                                     ; preds = %bb2.i62.invoke
  unreachable

bb58:                                             ; preds = %bb39
  %11 = shl nuw nsw i32 %_101, 2
  %_7.i.i.i.i = icmp samesign ne i64 %_0.i, 0
  %_113.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_113.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i69, i64 %_113.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb61

bb14.i.i.i:                                       ; preds = %bb58
  %x.i.i.i = load i8, ptr %_6.i.i69, align 1, !noalias !1684, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %12 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %12)
  %y.i.i.i = load i8, ptr %_113.sroa.0.0, align 1, !noalias !1684, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %13 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb61

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb61

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_113.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1684, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %14 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb61

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_113.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1684, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %15 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb61

bb61:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb58
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb58 ], [ %15, %bb8.i.i.i ], [ %14, %bb6.i.i.i ], [ %13, %bb4.i.i.i ]
  %.not.i57 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i57, label %bb2.i62.invoke, label %bb62, !prof !1064

bb62:                                             ; preds = %bb61
  %16 = shl nuw nsw i32 %_0.sroa.0.0.i, 1
  %_107 = add nuw nsw i32 %16, %11
  %_41.not.i.i = icmp samesign eq i64 %_0.i, 0
  br i1 %_41.not.i.i, label %bb65, label %bb28.i.i

bb28.i.i:                                         ; preds = %bb62
  %b15.i.i = load i8, ptr %_6.i.i69, align 1, !noalias !1691, !noundef !15
  %_130.i.i = zext i8 %b15.i.i to i64
  %17 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %17, align 1, !noalias !1691, !noundef !15
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i69, i64 %slurp.i.i
  %.not28.i.i = icmp samesign uge i64 %_0.i, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_7.i.i.i.i80 = icmp samesign ne i64 %_0.i, %slurp.i.i
  %spec.select475.idx = zext i1 %_7.i.i.i.i80 to i64
  %spec.select475 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i, i64 %spec.select475.idx
  br i1 %_7.i.i.i.i80, label %bb14.i.i.i86, label %bb65

bb14.i.i.i86:                                     ; preds = %bb28.i.i
  %x.i.i.i87 = load i8, ptr %_19.i38.i.i, align 1, !noalias !1696, !noundef !15
  %_6.i.i.i88 = icmp sgt i8 %x.i.i.i87, -1
  br i1 %_6.i.i.i88, label %bb3.i.i.i121, label %bb4.i.i.i89

bb4.i.i.i89:                                      ; preds = %bb14.i.i.i86
  %_30.i.i.i90 = and i8 %x.i.i.i87, 31
  %init.i.i.i91 = zext nneg i8 %_30.i.i.i90 to i32
  %_7.i10.i.i.i93 = icmp ne ptr %spec.select475, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i93)
  %y.i.i.i95 = load i8, ptr %spec.select475, align 1, !noalias !1696, !noundef !15
  %_34.i.i.i96 = shl nuw nsw i32 %init.i.i.i91, 6
  %_36.i.i.i97 = and i8 %y.i.i.i95, 63
  %_35.i.i.i98 = zext nneg i8 %_36.i.i.i97 to i32
  %18 = or disjoint i32 %_34.i.i.i96, %_35.i.i.i98
  %_13.i.i.i99 = icmp ugt i8 %x.i.i.i87, -33
  br i1 %_13.i.i.i99, label %bb6.i.i.i101, label %bb65

bb3.i.i.i121:                                     ; preds = %bb14.i.i.i86
  %_7.i.i.i122 = zext nneg i8 %x.i.i.i87 to i32
  br label %bb65

bb6.i.i.i101:                                     ; preds = %bb4.i.i.i89
  %_18.i12.i.i.i94 = getelementptr inbounds nuw i8, ptr %spec.select475, i64 1
  %_7.i17.i.i.i102 = icmp ne ptr %_18.i12.i.i.i94, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i102)
  %z.i.i.i104 = load i8, ptr %_18.i12.i.i.i94, align 1, !noalias !1696, !noundef !15
  %_40.i.i.i105 = shl nuw nsw i32 %_35.i.i.i98, 6
  %_42.i.i.i106 = and i8 %z.i.i.i104, 63
  %_41.i.i.i107 = zext nneg i8 %_42.i.i.i106 to i32
  %y_z.i.i.i108 = or disjoint i32 %_40.i.i.i105, %_41.i.i.i107
  %_20.i.i.i109 = shl nuw nsw i32 %init.i.i.i91, 12
  %19 = or disjoint i32 %y_z.i.i.i108, %_20.i.i.i109
  %_21.i.i.i110 = icmp ugt i8 %x.i.i.i87, -17
  br i1 %_21.i.i.i110, label %bb8.i.i.i111, label %bb65

bb8.i.i.i111:                                     ; preds = %bb6.i.i.i101
  %_18.i19.i.i.i103 = getelementptr inbounds nuw i8, ptr %spec.select475, i64 2
  %_7.i24.i.i.i112 = icmp ne ptr %_18.i19.i.i.i103, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i112)
  %w.i.i.i114 = load i8, ptr %_18.i19.i.i.i103, align 1, !noalias !1696, !noundef !15
  %_26.i.i.i115 = shl nuw nsw i32 %init.i.i.i91, 18
  %_25.i.i.i116 = and i32 %_26.i.i.i115, 1835008
  %_46.i.i.i117 = shl nuw nsw i32 %y_z.i.i.i108, 6
  %_48.i.i.i118 = and i8 %w.i.i.i114, 63
  %_47.i.i.i119 = zext nneg i8 %_48.i.i.i118 to i32
  %_27.i.i.i120 = or disjoint i32 %_46.i.i.i117, %_47.i.i.i119
  %20 = or disjoint i32 %_27.i.i.i120, %_25.i.i.i116
  br label %bb65

bb65:                                             ; preds = %bb62, %bb8.i.i.i111, %bb6.i.i.i101, %bb3.i.i.i121, %bb4.i.i.i89, %bb28.i.i
  %_0.sroa.0.0.i100 = phi i32 [ %_7.i.i.i122, %bb3.i.i.i121 ], [ 1114112, %bb28.i.i ], [ %20, %bb8.i.i.i111 ], [ %19, %bb6.i.i.i101 ], [ %18, %bb4.i.i.i89 ], [ 1114112, %bb62 ]
  %.not.i53 = icmp eq i32 %_0.sroa.0.0.i100, 1114112
  br i1 %.not.i53, label %bb2.i62.invoke, label %bb66, !prof !1064

bb66:                                             ; preds = %bb65
  %_116 = add nuw nsw i32 %_107, %_0.sroa.0.0.i100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_103)
  %21 = and i32 %_116, 7
  %_124 = icmp eq i32 %21, 0
  %22 = zext i1 %_124 to i32
  %spec.select = add i32 %count.sroa.0.0.lcssa, %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_133)
  store ptr %_6.i.i69, ptr %_133, align 8
  %23 = getelementptr inbounds nuw i8, ptr %_133, i64 8
  store ptr %_7.i, ptr %23, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_131 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_133, i64 noundef %_59)
  %.not.i49 = icmp eq i32 %_131, 1114112
  br i1 %.not.i49, label %bb2.i62.invoke, label %bb73, !prof !1064

bb73:                                             ; preds = %bb66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_142)
  store ptr %_6.i.i69, ptr %_142, align 8
  %24 = getelementptr inbounds nuw i8, ptr %_142, i64 8
  store ptr %_7.i, ptr %24, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_140 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_142, i64 noundef %_106)
  %.not.i45 = icmp eq i32 %_140, 1114112
  br i1 %.not.i45, label %bb2.i62.invoke, label %bb77, !prof !1064

bb77:                                             ; preds = %bb73
  %25 = shl nuw nsw i32 %_131, 2
  %26 = shl nuw nsw i32 %_140, 1
  %_136 = add nuw nsw i32 %26, %25
  %_150.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_150.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i69, i64 %_150.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i157, label %bb80

bb14.i.i.i157:                                    ; preds = %bb77
  %x.i.i.i158 = load i8, ptr %_6.i.i69, align 1, !noalias !1701, !noundef !15
  %_6.i.i.i159 = icmp sgt i8 %x.i.i.i158, -1
  br i1 %_6.i.i.i159, label %bb3.i.i.i192, label %bb4.i.i.i160

bb4.i.i.i160:                                     ; preds = %bb14.i.i.i157
  %_30.i.i.i161 = and i8 %x.i.i.i158, 31
  %init.i.i.i162 = zext nneg i8 %_30.i.i.i161 to i32
  %27 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %27)
  %y.i.i.i166 = load i8, ptr %_150.sroa.0.0, align 1, !noalias !1701, !noundef !15
  %_34.i.i.i167 = shl nuw nsw i32 %init.i.i.i162, 6
  %_36.i.i.i168 = and i8 %y.i.i.i166, 63
  %_35.i.i.i169 = zext nneg i8 %_36.i.i.i168 to i32
  %28 = or disjoint i32 %_34.i.i.i167, %_35.i.i.i169
  %_13.i.i.i170 = icmp ugt i8 %x.i.i.i158, -33
  br i1 %_13.i.i.i170, label %bb6.i.i.i172, label %bb80

bb3.i.i.i192:                                     ; preds = %bb14.i.i.i157
  %_7.i.i.i193 = zext nneg i8 %x.i.i.i158 to i32
  br label %bb80

bb6.i.i.i172:                                     ; preds = %bb4.i.i.i160
  %_18.i12.i.i.i165 = getelementptr inbounds nuw i8, ptr %_150.sroa.0.0, i64 1
  %_7.i17.i.i.i173 = icmp ne ptr %_18.i12.i.i.i165, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i173)
  %z.i.i.i175 = load i8, ptr %_18.i12.i.i.i165, align 1, !noalias !1701, !noundef !15
  %_40.i.i.i176 = shl nuw nsw i32 %_35.i.i.i169, 6
  %_42.i.i.i177 = and i8 %z.i.i.i175, 63
  %_41.i.i.i178 = zext nneg i8 %_42.i.i.i177 to i32
  %y_z.i.i.i179 = or disjoint i32 %_40.i.i.i176, %_41.i.i.i178
  %_20.i.i.i180 = shl nuw nsw i32 %init.i.i.i162, 12
  %29 = or disjoint i32 %y_z.i.i.i179, %_20.i.i.i180
  %_21.i.i.i181 = icmp ugt i8 %x.i.i.i158, -17
  br i1 %_21.i.i.i181, label %bb8.i.i.i182, label %bb80

bb8.i.i.i182:                                     ; preds = %bb6.i.i.i172
  %_18.i19.i.i.i174 = getelementptr inbounds nuw i8, ptr %_150.sroa.0.0, i64 2
  %_7.i24.i.i.i183 = icmp ne ptr %_18.i19.i.i.i174, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i183)
  %w.i.i.i185 = load i8, ptr %_18.i19.i.i.i174, align 1, !noalias !1701, !noundef !15
  %_26.i.i.i186 = shl nuw nsw i32 %init.i.i.i162, 18
  %_25.i.i.i187 = and i32 %_26.i.i.i186, 1835008
  %_46.i.i.i188 = shl nuw nsw i32 %y_z.i.i.i179, 6
  %_48.i.i.i189 = and i8 %w.i.i.i185, 63
  %_47.i.i.i190 = zext nneg i8 %_48.i.i.i189 to i32
  %_27.i.i.i191 = or disjoint i32 %_46.i.i.i188, %_47.i.i.i190
  %30 = or disjoint i32 %_27.i.i.i191, %_25.i.i.i187
  br label %bb80

bb80:                                             ; preds = %bb8.i.i.i182, %bb6.i.i.i172, %bb3.i.i.i192, %bb4.i.i.i160, %bb77
  %_0.sroa.0.0.i171 = phi i32 [ %_7.i.i.i193, %bb3.i.i.i192 ], [ 1114112, %bb77 ], [ %30, %bb8.i.i.i182 ], [ %29, %bb6.i.i.i172 ], [ %28, %bb4.i.i.i160 ]
  %.not.i41 = icmp eq i32 %_0.sroa.0.0.i171, 1114112
  br i1 %.not.i41, label %bb2.i62.invoke, label %bb81, !prof !1064

bb81:                                             ; preds = %bb80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_142)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_133)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb81
  %31 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i465, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %31, %cleanup.i.i ], [ %60, %cleanup.i.i465 ], [ %1, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE.exit": ; preds = %bb81
  %_145 = add nuw nsw i32 %_136, %_0.sroa.0.0.i171
  %33 = and i32 %_145, 7
  %_153 = icmp eq i32 %33, 0
  %34 = zext i1 %_153 to i32
  %spec.select9 = add i32 %spec.select, %34
  br label %bb87

bb87:                                             ; preds = %bb86, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE.exit"
  %count.sroa.0.3 = phi i32 [ %spec.select9, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha56a270c792f55cfE.exit" ], [ %count.sroa.0.6, %bb86 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
  ret i32 %count.sroa.0.3

bb43:                                             ; preds = %bb38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_81)
  store ptr %_6.i.i67, ptr %_81, align 8
  store ptr %_7.i196, ptr %5, align 8
  %_84 = add nuw i64 %iter.sroa.0.0489, 1
; call core::iter::traits::iterator::Iterator::nth
  %_79 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_81, i64 noundef %_84)
  %.not.i33 = icmp eq i32 %_79, 1114112
  br i1 %.not.i33, label %bb2.i62.invoke, label %bb47, !prof !1064

bb47:                                             ; preds = %bb43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_90)
  store ptr %_6.i.i67, ptr %_90, align 8
  store ptr %_7.i196, ptr %6, align 8
  %_93 = add i64 %iter.sroa.0.0489, 2
; call core::iter::traits::iterator::Iterator::nth
  %_88 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha88986e5fc428a40E(ptr noalias noundef align 8 dereferenceable(16) %_90, i64 noundef %_93)
  %.not.i29 = icmp eq i32 %_88, 1114112
  br i1 %.not.i29, label %bb2.i62.invoke, label %bb51, !prof !1064

bb51:                                             ; preds = %bb47
  %35 = shl nuw nsw i32 %_70, 2
  %36 = shl nuw nsw i32 %_79, 1
  %_75 = add nuw nsw i32 %36, %35
  %_85 = add nuw nsw i32 %_75, %_88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_90)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_81)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_72)
  %37 = and i32 %_85, 7
  %_94 = icmp eq i32 %37, 0
  %38 = zext i1 %_94 to i32
  %spec.select10 = add i32 %count.sroa.0.0490, %38
  %_0.i.i.i = icmp ult i64 %spec.select473491, %_59
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select473 = add nuw i64 %spec.select473491, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb38, label %bb39

bb14.i.i.i228:                                    ; preds = %bb10
  %x.i.i.i229 = load i8, ptr %_6.i.i65, align 1, !noalias !1708, !noundef !15
  %_6.i.i.i230 = icmp sgt i8 %x.i.i.i229, -1
  br i1 %_6.i.i.i230, label %bb3.i.i.i263, label %bb4.i.i.i231

bb4.i.i.i231:                                     ; preds = %bb14.i.i.i228
  %_30.i.i.i232 = and i8 %x.i.i.i229, 31
  %init.i.i.i233 = zext nneg i8 %_30.i.i.i232 to i32
  %39 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %39)
  %y.i.i.i237 = load i8, ptr %_23.sroa.0.0, align 1, !noalias !1708, !noundef !15
  %_34.i.i.i238 = shl nuw nsw i32 %init.i.i.i233, 6
  %_36.i.i.i239 = and i8 %y.i.i.i237, 63
  %_35.i.i.i240 = zext nneg i8 %_36.i.i.i239 to i32
  %40 = or disjoint i32 %_34.i.i.i238, %_35.i.i.i240
  %_13.i.i.i241 = icmp ugt i8 %x.i.i.i229, -33
  br i1 %_13.i.i.i241, label %bb6.i.i.i243, label %bb14

bb3.i.i.i263:                                     ; preds = %bb14.i.i.i228
  %_7.i.i.i264 = zext nneg i8 %x.i.i.i229 to i32
  br label %bb14

bb6.i.i.i243:                                     ; preds = %bb4.i.i.i231
  %_18.i12.i.i.i236 = getelementptr inbounds nuw i8, ptr %_23.sroa.0.0, i64 1
  %_7.i17.i.i.i244 = icmp ne ptr %_18.i12.i.i.i236, %_7.i203
  tail call void @llvm.assume(i1 %_7.i17.i.i.i244)
  %z.i.i.i246 = load i8, ptr %_18.i12.i.i.i236, align 1, !noalias !1708, !noundef !15
  %_40.i.i.i247 = shl nuw nsw i32 %_35.i.i.i240, 6
  %_42.i.i.i248 = and i8 %z.i.i.i246, 63
  %_41.i.i.i249 = zext nneg i8 %_42.i.i.i248 to i32
  %y_z.i.i.i250 = or disjoint i32 %_40.i.i.i247, %_41.i.i.i249
  %_20.i.i.i251 = shl nuw nsw i32 %init.i.i.i233, 12
  %41 = or disjoint i32 %y_z.i.i.i250, %_20.i.i.i251
  %_21.i.i.i252 = icmp ugt i8 %x.i.i.i229, -17
  br i1 %_21.i.i.i252, label %bb8.i.i.i253, label %bb14

bb8.i.i.i253:                                     ; preds = %bb6.i.i.i243
  %_18.i19.i.i.i245 = getelementptr inbounds nuw i8, ptr %_23.sroa.0.0, i64 2
  %_7.i24.i.i.i254 = icmp ne ptr %_18.i19.i.i.i245, %_7.i203
  tail call void @llvm.assume(i1 %_7.i24.i.i.i254)
  %w.i.i.i256 = load i8, ptr %_18.i19.i.i.i245, align 1, !noalias !1708, !noundef !15
  %_26.i.i.i257 = shl nuw nsw i32 %init.i.i.i233, 18
  %_25.i.i.i258 = and i32 %_26.i.i.i257, 1835008
  %_46.i.i.i259 = shl nuw nsw i32 %y_z.i.i.i250, 6
  %_48.i.i.i260 = and i8 %w.i.i.i256, 63
  %_47.i.i.i261 = zext nneg i8 %_48.i.i.i260 to i32
  %_27.i.i.i262 = or disjoint i32 %_46.i.i.i259, %_47.i.i.i261
  %42 = or disjoint i32 %_27.i.i.i262, %_25.i.i.i258
  br label %bb14

bb14:                                             ; preds = %bb8.i.i.i253, %bb6.i.i.i243, %bb3.i.i.i263, %bb4.i.i.i231, %bb10
  %_0.sroa.0.0.i242 = phi i32 [ %_7.i.i.i264, %bb3.i.i.i263 ], [ 1114112, %bb10 ], [ %42, %bb8.i.i.i253 ], [ %41, %bb6.i.i.i243 ], [ %40, %bb4.i.i.i231 ]
  %.not.i25 = icmp eq i32 %_0.sroa.0.0.i242, 1114112
  br i1 %.not.i25, label %bb2.i62.invoke, label %bb15, !prof !1064

bb15:                                             ; preds = %bb14
  %43 = shl nuw nsw i32 %_0.sroa.0.0.i242, 1
  %_41.not.i.i276 = icmp samesign eq i64 %_0.i, 0
  br i1 %_41.not.i.i276, label %bb18, label %bb28.i.i277

bb28.i.i277:                                      ; preds = %bb15
  %b15.i.i278 = load i8, ptr %_6.i.i65, align 1, !noalias !1715, !noundef !15
  %_130.i.i279 = zext i8 %b15.i.i278 to i64
  %44 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i279
  %_128.i.i280 = load i8, ptr %44, align 1, !noalias !1715, !noundef !15
  %slurp.i.i281 = zext i8 %_128.i.i280 to i64
  %_19.i38.i.i282 = getelementptr inbounds nuw i8, ptr %_6.i.i65, i64 %slurp.i.i281
  %.not28.i.i283 = icmp samesign uge i64 %_0.i, %slurp.i.i281
  tail call void @llvm.assume(i1 %.not28.i.i283)
  %_7.i.i.i.i288 = icmp samesign ne i64 %_0.i, %slurp.i.i281
  %spec.select477.idx = zext i1 %_7.i.i.i.i288 to i64
  %spec.select477 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i282, i64 %spec.select477.idx
  br i1 %_7.i.i.i.i288, label %bb14.i.i.i294, label %bb18

bb14.i.i.i294:                                    ; preds = %bb28.i.i277
  %x.i.i.i295 = load i8, ptr %_19.i38.i.i282, align 1, !noalias !1720, !noundef !15
  %_6.i.i.i296 = icmp sgt i8 %x.i.i.i295, -1
  br i1 %_6.i.i.i296, label %bb3.i.i.i329, label %bb4.i.i.i297

bb4.i.i.i297:                                     ; preds = %bb14.i.i.i294
  %_30.i.i.i298 = and i8 %x.i.i.i295, 31
  %init.i.i.i299 = zext nneg i8 %_30.i.i.i298 to i32
  %_7.i10.i.i.i301 = icmp ne ptr %spec.select477, %_7.i203
  tail call void @llvm.assume(i1 %_7.i10.i.i.i301)
  %y.i.i.i303 = load i8, ptr %spec.select477, align 1, !noalias !1720, !noundef !15
  %_34.i.i.i304 = shl nuw nsw i32 %init.i.i.i299, 6
  %_36.i.i.i305 = and i8 %y.i.i.i303, 63
  %_35.i.i.i306 = zext nneg i8 %_36.i.i.i305 to i32
  %45 = or disjoint i32 %_34.i.i.i304, %_35.i.i.i306
  %_13.i.i.i307 = icmp ugt i8 %x.i.i.i295, -33
  br i1 %_13.i.i.i307, label %bb6.i.i.i309, label %bb18

bb3.i.i.i329:                                     ; preds = %bb14.i.i.i294
  %_7.i.i.i330 = zext nneg i8 %x.i.i.i295 to i32
  br label %bb18

bb6.i.i.i309:                                     ; preds = %bb4.i.i.i297
  %_18.i12.i.i.i302 = getelementptr inbounds nuw i8, ptr %spec.select477, i64 1
  %_7.i17.i.i.i310 = icmp ne ptr %_18.i12.i.i.i302, %_7.i203
  tail call void @llvm.assume(i1 %_7.i17.i.i.i310)
  %z.i.i.i312 = load i8, ptr %_18.i12.i.i.i302, align 1, !noalias !1720, !noundef !15
  %_40.i.i.i313 = shl nuw nsw i32 %_35.i.i.i306, 6
  %_42.i.i.i314 = and i8 %z.i.i.i312, 63
  %_41.i.i.i315 = zext nneg i8 %_42.i.i.i314 to i32
  %y_z.i.i.i316 = or disjoint i32 %_40.i.i.i313, %_41.i.i.i315
  %_20.i.i.i317 = shl nuw nsw i32 %init.i.i.i299, 12
  %46 = or disjoint i32 %y_z.i.i.i316, %_20.i.i.i317
  %_21.i.i.i318 = icmp ugt i8 %x.i.i.i295, -17
  br i1 %_21.i.i.i318, label %bb8.i.i.i319, label %bb18

bb8.i.i.i319:                                     ; preds = %bb6.i.i.i309
  %_18.i19.i.i.i311 = getelementptr inbounds nuw i8, ptr %spec.select477, i64 2
  %_7.i24.i.i.i320 = icmp ne ptr %_18.i19.i.i.i311, %_7.i203
  tail call void @llvm.assume(i1 %_7.i24.i.i.i320)
  %w.i.i.i322 = load i8, ptr %_18.i19.i.i.i311, align 1, !noalias !1720, !noundef !15
  %_26.i.i.i323 = shl nuw nsw i32 %init.i.i.i299, 18
  %_25.i.i.i324 = and i32 %_26.i.i.i323, 1835008
  %_46.i.i.i325 = shl nuw nsw i32 %y_z.i.i.i316, 6
  %_48.i.i.i326 = and i8 %w.i.i.i322, 63
  %_47.i.i.i327 = zext nneg i8 %_48.i.i.i326 to i32
  %_27.i.i.i328 = or disjoint i32 %_46.i.i.i325, %_47.i.i.i327
  %47 = or disjoint i32 %_27.i.i.i328, %_25.i.i.i324
  br label %bb18

bb18:                                             ; preds = %bb15, %bb8.i.i.i319, %bb6.i.i.i309, %bb3.i.i.i329, %bb4.i.i.i297, %bb28.i.i277
  %_0.sroa.0.0.i308 = phi i32 [ %_7.i.i.i330, %bb3.i.i.i329 ], [ 1114112, %bb28.i.i277 ], [ %47, %bb8.i.i.i319 ], [ %46, %bb6.i.i.i309 ], [ %45, %bb4.i.i.i297 ], [ 1114112, %bb15 ]
  %.not.i21 = icmp eq i32 %_0.sroa.0.0.i308, 1114112
  br i1 %.not.i21, label %bb2.i62.invoke, label %bb19, !prof !1064

bb19:                                             ; preds = %bb18
  %_26 = add nuw nsw i32 %_0.sroa.0.0.i308, %43
  %_41.not.i.i342 = icmp samesign eq i64 %_0.i, 0
  br i1 %_41.not.i.i342, label %bb22, label %bb28.i.i343

bb28.i.i343:                                      ; preds = %bb19
  %b15.i.i344 = load i8, ptr %_6.i.i65, align 1, !noalias !1725, !noundef !15
  %_130.i.i345 = zext i8 %b15.i.i344 to i64
  %48 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i345
  %_128.i.i346 = load i8, ptr %48, align 1, !noalias !1725, !noundef !15
  %slurp.i.i347 = zext i8 %_128.i.i346 to i64
  %_19.i38.i.i348 = getelementptr inbounds nuw i8, ptr %_6.i.i65, i64 %slurp.i.i347
  %.not28.i.i349 = icmp samesign uge i64 %_0.i, %slurp.i.i347
  tail call void @llvm.assume(i1 %.not28.i.i349)
  %_7.i.i.i.i354 = icmp samesign ne i64 %_0.i, %slurp.i.i347
  %spec.select479.idx = zext i1 %_7.i.i.i.i354 to i64
  %spec.select479 = getelementptr inbounds nuw i8, ptr %_19.i38.i.i348, i64 %spec.select479.idx
  br i1 %_7.i.i.i.i354, label %bb14.i.i.i360, label %bb22

bb14.i.i.i360:                                    ; preds = %bb28.i.i343
  %x.i.i.i361 = load i8, ptr %_19.i38.i.i348, align 1, !noalias !1730, !noundef !15
  %_6.i.i.i362 = icmp sgt i8 %x.i.i.i361, -1
  br i1 %_6.i.i.i362, label %bb3.i.i.i395, label %bb4.i.i.i363

bb4.i.i.i363:                                     ; preds = %bb14.i.i.i360
  %_30.i.i.i364 = and i8 %x.i.i.i361, 31
  %init.i.i.i365 = zext nneg i8 %_30.i.i.i364 to i32
  %_7.i10.i.i.i367 = icmp ne ptr %spec.select479, %_7.i203
  tail call void @llvm.assume(i1 %_7.i10.i.i.i367)
  %y.i.i.i369 = load i8, ptr %spec.select479, align 1, !noalias !1730, !noundef !15
  %_34.i.i.i370 = shl nuw nsw i32 %init.i.i.i365, 6
  %_36.i.i.i371 = and i8 %y.i.i.i369, 63
  %_35.i.i.i372 = zext nneg i8 %_36.i.i.i371 to i32
  %49 = or disjoint i32 %_34.i.i.i370, %_35.i.i.i372
  %_13.i.i.i373 = icmp ugt i8 %x.i.i.i361, -33
  br i1 %_13.i.i.i373, label %bb6.i.i.i375, label %bb22

bb3.i.i.i395:                                     ; preds = %bb14.i.i.i360
  %_7.i.i.i396 = zext nneg i8 %x.i.i.i361 to i32
  br label %bb22

bb6.i.i.i375:                                     ; preds = %bb4.i.i.i363
  %_18.i12.i.i.i368 = getelementptr inbounds nuw i8, ptr %spec.select479, i64 1
  %_7.i17.i.i.i376 = icmp ne ptr %_18.i12.i.i.i368, %_7.i203
  tail call void @llvm.assume(i1 %_7.i17.i.i.i376)
  %z.i.i.i378 = load i8, ptr %_18.i12.i.i.i368, align 1, !noalias !1730, !noundef !15
  %_40.i.i.i379 = shl nuw nsw i32 %_35.i.i.i372, 6
  %_42.i.i.i380 = and i8 %z.i.i.i378, 63
  %_41.i.i.i381 = zext nneg i8 %_42.i.i.i380 to i32
  %y_z.i.i.i382 = or disjoint i32 %_40.i.i.i379, %_41.i.i.i381
  %_20.i.i.i383 = shl nuw nsw i32 %init.i.i.i365, 12
  %50 = or disjoint i32 %y_z.i.i.i382, %_20.i.i.i383
  %_21.i.i.i384 = icmp ugt i8 %x.i.i.i361, -17
  br i1 %_21.i.i.i384, label %bb8.i.i.i385, label %bb22

bb8.i.i.i385:                                     ; preds = %bb6.i.i.i375
  %_18.i19.i.i.i377 = getelementptr inbounds nuw i8, ptr %spec.select479, i64 2
  %_7.i24.i.i.i386 = icmp ne ptr %_18.i19.i.i.i377, %_7.i203
  tail call void @llvm.assume(i1 %_7.i24.i.i.i386)
  %w.i.i.i388 = load i8, ptr %_18.i19.i.i.i377, align 1, !noalias !1730, !noundef !15
  %_26.i.i.i389 = shl nuw nsw i32 %init.i.i.i365, 18
  %_25.i.i.i390 = and i32 %_26.i.i.i389, 1835008
  %_46.i.i.i391 = shl nuw nsw i32 %y_z.i.i.i382, 6
  %_48.i.i.i392 = and i8 %w.i.i.i388, 63
  %_47.i.i.i393 = zext nneg i8 %_48.i.i.i392 to i32
  %_27.i.i.i394 = or disjoint i32 %_46.i.i.i391, %_47.i.i.i393
  %51 = or disjoint i32 %_27.i.i.i394, %_25.i.i.i390
  br label %bb22

bb22:                                             ; preds = %bb19, %bb8.i.i.i385, %bb6.i.i.i375, %bb3.i.i.i395, %bb4.i.i.i363, %bb28.i.i343
  %_0.sroa.0.0.i374 = phi i32 [ %_7.i.i.i396, %bb3.i.i.i395 ], [ 1114112, %bb28.i.i343 ], [ %51, %bb8.i.i.i385 ], [ %50, %bb6.i.i.i375 ], [ %49, %bb4.i.i.i363 ], [ 1114112, %bb19 ]
  %.not.i17 = icmp eq i32 %_0.sroa.0.0.i374, 1114112
  br i1 %.not.i17, label %bb2.i62.invoke, label %bb23, !prof !1064

bb23:                                             ; preds = %bb22
  %52 = shl nuw nsw i32 %_0.sroa.0.0.i374, 1
  %_49.sroa.0.0.idx = zext i1 %_7.i.i.i.i222 to i64
  %_49.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i65, i64 %_49.sroa.0.0.idx
  br i1 %_7.i.i.i.i222, label %bb14.i.i.i426, label %bb26

bb14.i.i.i426:                                    ; preds = %bb23
  %x.i.i.i427 = load i8, ptr %_6.i.i65, align 1, !noalias !1735, !noundef !15
  %_6.i.i.i428 = icmp sgt i8 %x.i.i.i427, -1
  br i1 %_6.i.i.i428, label %bb3.i.i.i461, label %bb4.i.i.i429

bb4.i.i.i429:                                     ; preds = %bb14.i.i.i426
  %_30.i.i.i430 = and i8 %x.i.i.i427, 31
  %init.i.i.i431 = zext nneg i8 %_30.i.i.i430 to i32
  %53 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %53)
  %y.i.i.i435 = load i8, ptr %_49.sroa.0.0, align 1, !noalias !1735, !noundef !15
  %_34.i.i.i436 = shl nuw nsw i32 %init.i.i.i431, 6
  %_36.i.i.i437 = and i8 %y.i.i.i435, 63
  %_35.i.i.i438 = zext nneg i8 %_36.i.i.i437 to i32
  %54 = or disjoint i32 %_34.i.i.i436, %_35.i.i.i438
  %_13.i.i.i439 = icmp ugt i8 %x.i.i.i427, -33
  br i1 %_13.i.i.i439, label %bb6.i.i.i441, label %bb26

bb3.i.i.i461:                                     ; preds = %bb14.i.i.i426
  %_7.i.i.i462 = zext nneg i8 %x.i.i.i427 to i32
  br label %bb26

bb6.i.i.i441:                                     ; preds = %bb4.i.i.i429
  %_18.i12.i.i.i434 = getelementptr inbounds nuw i8, ptr %_49.sroa.0.0, i64 1
  %_7.i17.i.i.i442 = icmp ne ptr %_18.i12.i.i.i434, %_7.i203
  tail call void @llvm.assume(i1 %_7.i17.i.i.i442)
  %z.i.i.i444 = load i8, ptr %_18.i12.i.i.i434, align 1, !noalias !1735, !noundef !15
  %_40.i.i.i445 = shl nuw nsw i32 %_35.i.i.i438, 6
  %_42.i.i.i446 = and i8 %z.i.i.i444, 63
  %_41.i.i.i447 = zext nneg i8 %_42.i.i.i446 to i32
  %y_z.i.i.i448 = or disjoint i32 %_40.i.i.i445, %_41.i.i.i447
  %_20.i.i.i449 = shl nuw nsw i32 %init.i.i.i431, 12
  %55 = or disjoint i32 %y_z.i.i.i448, %_20.i.i.i449
  %_21.i.i.i450 = icmp ugt i8 %x.i.i.i427, -17
  br i1 %_21.i.i.i450, label %bb8.i.i.i451, label %bb26

bb8.i.i.i451:                                     ; preds = %bb6.i.i.i441
  %_18.i19.i.i.i443 = getelementptr inbounds nuw i8, ptr %_49.sroa.0.0, i64 2
  %_7.i24.i.i.i452 = icmp ne ptr %_18.i19.i.i.i443, %_7.i203
  tail call void @llvm.assume(i1 %_7.i24.i.i.i452)
  %w.i.i.i454 = load i8, ptr %_18.i19.i.i.i443, align 1, !noalias !1735, !noundef !15
  %_26.i.i.i455 = shl nuw nsw i32 %init.i.i.i431, 18
  %_25.i.i.i456 = and i32 %_26.i.i.i455, 1835008
  %_46.i.i.i457 = shl nuw nsw i32 %y_z.i.i.i448, 6
  %_48.i.i.i458 = and i8 %w.i.i.i454, 63
  %_47.i.i.i459 = zext nneg i8 %_48.i.i.i458 to i32
  %_27.i.i.i460 = or disjoint i32 %_46.i.i.i457, %_47.i.i.i459
  %56 = or disjoint i32 %_27.i.i.i460, %_25.i.i.i456
  br label %bb26

bb26:                                             ; preds = %bb8.i.i.i451, %bb6.i.i.i441, %bb3.i.i.i461, %bb4.i.i.i429, %bb23
  %_0.sroa.0.0.i440 = phi i32 [ %_7.i.i.i462, %bb3.i.i.i461 ], [ 1114112, %bb23 ], [ %56, %bb8.i.i.i451 ], [ %55, %bb6.i.i.i441 ], [ %54, %bb4.i.i.i429 ]
  %.not.i13 = icmp eq i32 %_0.sroa.0.0.i440, 1114112
  br i1 %.not.i13, label %bb2.i62.invoke, label %bb27, !prof !1064

bb27:                                             ; preds = %bb26
  %_44 = add nuw nsw i32 %_0.sroa.0.0.i440, %52
  %57 = and i32 %_26, 7
  %_52 = icmp eq i32 %57, 0
  %spec.select11 = zext i1 %_52 to i32
  %58 = and i32 %_44, 7
  %_54 = icmp eq i32 %58, 0
  %59 = select i1 %_52, i32 2, i32 1
  %spec.select12 = select i1 %_54, i32 %59, i32 %spec.select11
  br label %bb86

bb86:                                             ; preds = %bb27, %bb6
  %count.sroa.0.6 = phi i32 [ %., %bb6 ], [ %spec.select12, %bb27 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %bb87 unwind label %cleanup.i.i465

cleanup.i.i465:                                   ; preds = %bb86
  %60 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %common.resume unwind label %terminate.i.i466

terminate.i.i466:                                 ; preds = %cleanup.i.i465
  %61 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

bb14.i.i:                                         ; preds = %bb2
  %x.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1742, !noundef !15
  %_6.i.i472 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i472, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %62 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %62)
  %y.i.i = load i8, ptr %_10.sroa.0.0, align 1, !noalias !1742, !noundef !15
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %63 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb5

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb5

bb6.i.i:                                          ; preds = %bb4.i.i
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %_10.sroa.0.0, i64 1
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i469
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !1742, !noundef !15
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %64 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb5

bb8.i.i:                                          ; preds = %bb6.i.i
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %_10.sroa.0.0, i64 2
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i469
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !1742, !noundef !15
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %65 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb5

bb5:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %bb2
  %spec.select.i = phi i32 [ %_7.i.i, %bb3.i.i ], [ 1114112, %bb2 ], [ %65, %bb8.i.i ], [ %64, %bb6.i.i ], [ %63, %bb4.i.i ]
  %.not.i = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not.i, label %bb2.i62.invoke, label %bb6, !prof !1064

bb6:                                              ; preds = %bb5
  %66 = and i32 %spec.select.i, 7
  %_13 = icmp eq i32 %66, 0
  %. = zext i1 %_13 to i32
  br label %bb86

terminate:                                        ; preds = %cleanup
  %67 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
