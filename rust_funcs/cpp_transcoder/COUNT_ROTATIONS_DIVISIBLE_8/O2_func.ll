define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_124 = alloca [16 x i8], align 8
  %_116 = alloca [16 x i8], align 8
  %_89 = alloca [16 x i8], align 8
  %_77 = alloca [16 x i8], align 8
  %_69 = alloca [16 x i8], align 8
  %_61 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_135 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_135)
  switch i64 %len, label %bb6 [
    i64 1, label %bb1
    i64 2, label %bb40
  ]

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_139 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %x.i = load i8, ptr %_139, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  tail call void @llvm.assume(i1 %_6.i)
  %2 = and i8 %x.i, 7
  %_10 = icmp eq i8 %2, 0
  %. = zext i1 %_10 to i32
  br label %bb27

bb6:                                              ; preds = %start
  %iter1 = add nsw i64 %len, -2
  %_249834.not = icmp eq i64 %iter1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_261.pre = load ptr, ptr %.phi.trans.insert, align 8
  br i1 %_249834.not, label %bb16, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %bb6
  %_268 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 %len
  %3 = getelementptr inbounds nuw i8, ptr %_61, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_69, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_77, i64 8
  %6 = add nsw i64 %len, -1
  br label %bb15

bb15:                                             ; preds = %bb15.lr.ph, %bb109
  %7 = phi i64 [ 1, %bb15.lr.ph ], [ %62, %bb109 ]
  %count.sroa.0.0836 = phi i32 [ 0, %bb15.lr.ph ], [ %spec.select66, %bb109 ]
  %iter.sroa.0.0835 = phi i64 [ 0, %bb15.lr.ph ], [ %7, %bb109 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_61)
  store ptr %_261.pre, ptr %_61, align 8
  store ptr %_268, ptr %3, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_272 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_61, i64 noundef %iter.sroa.0.0835)
  %.not59 = icmp eq i64 %_272, 0
  br i1 %.not59, label %bb83, label %bb168.invoke.invoke

bb16:                                             ; preds = %bb109, %bb6
  %_91.pre-phi = phi i64 [ 1, %bb6 ], [ %6, %bb109 ]
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb6 ], [ %spec.select66, %bb109 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_89)
  %_332 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 %len
  store ptr %_261.pre, ptr %_89, align 8
  %8 = getelementptr inbounds nuw i8, ptr %_89, i64 8
  store ptr %_332, ptr %8, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_336 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_89, i64 noundef %_91.pre-phi)
  %.not47 = icmp eq i64 %_336, 0
  br i1 %.not47, label %bb113, label %bb168.invoke.invoke

cleanup:                                          ; preds = %bb168.invoke.invoke, %bb65.invoke
  %self3.i.i.i.i4.i.i = phi ptr [ %_160, %bb65.invoke ], [ %_261.pre, %bb168.invoke.invoke ]
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %self1.i.i.i.i1.i.i = load i64, ptr %n, align 8, !range !1058, !alias.scope !1059, !noalias !1062, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb30, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1064
  br label %bb30

bb113:                                            ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %ptr.i.i83 = load ptr, ptr %_89, align 8, !alias.scope !1068, !nonnull !23, !noundef !23
  %end_or_len.i.i84 = load ptr, ptr %8, align 8, !alias.scope !1068, !nonnull !23, !noundef !23
  %_7.i.i85 = icmp eq ptr %ptr.i.i83, %end_or_len.i.i84
  br i1 %_7.i.i85, label %bb168.invoke.invoke, label %bb14.i86

bb14.i86:                                         ; preds = %bb113
  %x.i88 = load i8, ptr %ptr.i.i83, align 1, !noalias !1065, !noundef !23
  %_6.i89 = icmp sgt i8 %x.i88, -1
  br i1 %_6.i89, label %bb3.i122, label %bb4.i90

bb4.i90:                                          ; preds = %bb14.i86
  %_18.i.i87 = getelementptr inbounds nuw i8, ptr %ptr.i.i83, i64 1
  %_30.i91 = and i8 %x.i88, 31
  %init.i92 = zext nneg i8 %_30.i91 to i32
  %_7.i10.i93 = icmp ne ptr %_18.i.i87, %end_or_len.i.i84
  tail call void @llvm.assume(i1 %_7.i10.i93)
  %y.i95 = load i8, ptr %_18.i.i87, align 1, !noalias !1065, !noundef !23
  %_34.i96 = shl nuw nsw i32 %init.i92, 6
  %_36.i97 = and i8 %y.i95, 63
  %_35.i98 = zext nneg i8 %_36.i97 to i32
  %10 = or disjoint i32 %_34.i96, %_35.i98
  %_13.i99 = icmp samesign ugt i8 %x.i88, -33
  br i1 %_13.i99, label %bb6.i102, label %bb123

bb3.i122:                                         ; preds = %bb14.i86
  %_7.i123 = zext nneg i8 %x.i88 to i32
  br label %bb123

bb6.i102:                                         ; preds = %bb4.i90
  %_18.i12.i94 = getelementptr inbounds nuw i8, ptr %ptr.i.i83, i64 2
  %_7.i17.i103 = icmp ne ptr %_18.i12.i94, %end_or_len.i.i84
  tail call void @llvm.assume(i1 %_7.i17.i103)
  %z.i105 = load i8, ptr %_18.i12.i94, align 1, !noalias !1065, !noundef !23
  %_40.i106 = shl nuw nsw i32 %_35.i98, 6
  %_42.i107 = and i8 %z.i105, 63
  %_41.i108 = zext nneg i8 %_42.i107 to i32
  %y_z.i109 = or disjoint i32 %_40.i106, %_41.i108
  %_20.i110 = shl nuw nsw i32 %init.i92, 12
  %11 = or disjoint i32 %y_z.i109, %_20.i110
  %_21.i111 = icmp samesign ugt i8 %x.i88, -17
  br i1 %_21.i111, label %bb111, label %bb123

bb111:                                            ; preds = %bb6.i102
  %_18.i19.i104 = getelementptr inbounds nuw i8, ptr %ptr.i.i83, i64 3
  %_7.i24.i113 = icmp ne ptr %_18.i19.i104, %end_or_len.i.i84
  tail call void @llvm.assume(i1 %_7.i24.i113)
  %w.i115 = load i8, ptr %_18.i19.i104, align 1, !noalias !1065, !noundef !23
  %_26.i116 = shl nuw nsw i32 %init.i92, 18
  %_25.i117 = and i32 %_26.i116, 1835008
  %_46.i118 = shl nuw nsw i32 %y_z.i109, 6
  %_48.i119 = and i8 %w.i115, 63
  %_47.i120 = zext nneg i8 %_48.i119 to i32
  %_27.i121 = or disjoint i32 %_46.i118, %_47.i120
  %12 = or disjoint i32 %_27.i121, %_25.i117
  %.not48 = icmp eq i32 %12, 1114112
  br i1 %.not48, label %bb168.invoke.invoke, label %bb123, !prof !1071

bb123:                                            ; preds = %bb3.i122, %bb6.i102, %bb4.i90, %bb111
  %_0.sroa.4.0.i100.ph766 = phi i32 [ %12, %bb111 ], [ %_7.i123, %bb3.i122 ], [ %11, %bb6.i102 ], [ %10, %bb4.i90 ]
  %13 = icmp samesign ult i32 %_0.sroa.4.0.i100.ph766, 1114112
  tail call void @llvm.assume(i1 %13)
  %14 = shl nuw nsw i32 %_0.sroa.4.0.i100.ph766, 2
  %_7.i.i127 = icmp samesign eq i64 %len, 0
  br i1 %_7.i.i127, label %bb168.invoke.invoke, label %bb14.i128

bb14.i128:                                        ; preds = %bb123
  %x.i130 = load i8, ptr %_261.pre, align 1, !noalias !1072, !noundef !23
  %_6.i131 = icmp sgt i8 %x.i130, -1
  br i1 %_6.i131, label %bb3.i164, label %bb4.i132

bb4.i132:                                         ; preds = %bb14.i128
  %_18.i.i129 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 1
  %_30.i133 = and i8 %x.i130, 31
  %init.i134 = zext nneg i8 %_30.i133 to i32
  %_7.i10.i135 = icmp samesign ne i64 %len, 1
  tail call void @llvm.assume(i1 %_7.i10.i135)
  %y.i137 = load i8, ptr %_18.i.i129, align 1, !noalias !1072, !noundef !23
  %_34.i138 = shl nuw nsw i32 %init.i134, 6
  %_36.i139 = and i8 %y.i137, 63
  %_35.i140 = zext nneg i8 %_36.i139 to i32
  %15 = or disjoint i32 %_34.i138, %_35.i140
  %_13.i141 = icmp samesign ugt i8 %x.i130, -33
  br i1 %_13.i141, label %bb6.i144, label %bb62.i

bb3.i164:                                         ; preds = %bb14.i128
  %_7.i165 = zext nneg i8 %x.i130 to i32
  br label %bb62.i

bb6.i144:                                         ; preds = %bb4.i132
  %_18.i12.i136 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 2
  %_7.i17.i145 = icmp samesign ne i64 %len, 2
  tail call void @llvm.assume(i1 %_7.i17.i145)
  %z.i147 = load i8, ptr %_18.i12.i136, align 1, !noalias !1072, !noundef !23
  %_40.i148 = shl nuw nsw i32 %_35.i140, 6
  %_42.i149 = and i8 %z.i147, 63
  %_41.i150 = zext nneg i8 %_42.i149 to i32
  %y_z.i151 = or disjoint i32 %_40.i148, %_41.i150
  %_20.i152 = shl nuw nsw i32 %init.i134, 12
  %16 = or disjoint i32 %y_z.i151, %_20.i152
  %_21.i153 = icmp samesign ugt i8 %x.i130, -17
  br i1 %_21.i153, label %bb121, label %bb62.i

bb121:                                            ; preds = %bb6.i144
  %_18.i19.i146 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 3
  %_7.i24.i155 = icmp samesign ne i64 %len, 3
  tail call void @llvm.assume(i1 %_7.i24.i155)
  %w.i157 = load i8, ptr %_18.i19.i146, align 1, !noalias !1072, !noundef !23
  %_26.i158 = shl nuw nsw i32 %init.i134, 18
  %_25.i159 = and i32 %_26.i158, 1835008
  %_46.i160 = shl nuw nsw i32 %y_z.i151, 6
  %_48.i161 = and i8 %w.i157, 63
  %_47.i162 = zext nneg i8 %_48.i161 to i32
  %_27.i163 = or disjoint i32 %_46.i160, %_47.i162
  %17 = or disjoint i32 %_27.i163, %_25.i159
  %.not50 = icmp eq i32 %17, 1114112
  br i1 %.not50, label %bb168.invoke.invoke, label %bb62.i, !prof !1075

bb62.i:                                           ; preds = %bb4.i132, %bb6.i144, %bb3.i164, %bb121
  %_0.sroa.4.0.i142842 = phi i32 [ %17, %bb121 ], [ %15, %bb4.i132 ], [ %16, %bb6.i144 ], [ %_7.i165, %bb3.i164 ]
  %18 = icmp samesign ult i32 %_0.sroa.4.0.i142842, 1114112
  tail call void @llvm.assume(i1 %18)
  %19 = shl nuw nsw i32 %_0.sroa.4.0.i142842, 1
  %_92 = add nuw nsw i32 %19, %14
  %_130.i = zext i8 %x.i130 to i64
  %20 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %20, align 1, !noalias !1076, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_261.pre, i64 %slurp.i
  %.not28.i = icmp samesign uge i64 %len, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_7.i.i169 = icmp samesign eq i64 %len, %slurp.i
  br i1 %_7.i.i169, label %bb168.invoke.invoke, label %bb14.i170

bb14.i170:                                        ; preds = %bb62.i
  %x.i172 = load i8, ptr %_19.i38.i, align 1, !noalias !1079, !noundef !23
  %_6.i173 = icmp sgt i8 %x.i172, -1
  br i1 %_6.i173, label %bb3.i206, label %bb4.i174

bb4.i174:                                         ; preds = %bb14.i170
  %_18.i.i171 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 1
  %_30.i175 = and i8 %x.i172, 31
  %init.i176 = zext nneg i8 %_30.i175 to i32
  %_7.i10.i177 = icmp ne ptr %_18.i.i171, %_332
  tail call void @llvm.assume(i1 %_7.i10.i177)
  %y.i179 = load i8, ptr %_18.i.i171, align 1, !noalias !1079, !noundef !23
  %_34.i180 = shl nuw nsw i32 %init.i176, 6
  %_36.i181 = and i8 %y.i179, 63
  %_35.i182 = zext nneg i8 %_36.i181 to i32
  %21 = or disjoint i32 %_34.i180, %_35.i182
  %_13.i183 = icmp samesign ugt i8 %x.i172, -33
  br i1 %_13.i183, label %bb6.i186, label %bb139

bb3.i206:                                         ; preds = %bb14.i170
  %_7.i207 = zext nneg i8 %x.i172 to i32
  br label %bb139

bb6.i186:                                         ; preds = %bb4.i174
  %_18.i12.i178 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 2
  %_7.i17.i187 = icmp ne ptr %_18.i12.i178, %_332
  tail call void @llvm.assume(i1 %_7.i17.i187)
  %z.i189 = load i8, ptr %_18.i12.i178, align 1, !noalias !1079, !noundef !23
  %_40.i190 = shl nuw nsw i32 %_35.i182, 6
  %_42.i191 = and i8 %z.i189, 63
  %_41.i192 = zext nneg i8 %_42.i191 to i32
  %y_z.i193 = or disjoint i32 %_40.i190, %_41.i192
  %_20.i194 = shl nuw nsw i32 %init.i176, 12
  %22 = or disjoint i32 %y_z.i193, %_20.i194
  %_21.i195 = icmp samesign ugt i8 %x.i172, -17
  br i1 %_21.i195, label %bb131, label %bb139

bb131:                                            ; preds = %bb6.i186
  %_18.i19.i188 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 3
  %_7.i24.i197 = icmp ne ptr %_18.i19.i188, %_332
  tail call void @llvm.assume(i1 %_7.i24.i197)
  %w.i199 = load i8, ptr %_18.i19.i188, align 1, !noalias !1079, !noundef !23
  %_26.i200 = shl nuw nsw i32 %init.i176, 18
  %_25.i201 = and i32 %_26.i200, 1835008
  %_46.i202 = shl nuw nsw i32 %y_z.i193, 6
  %_48.i203 = and i8 %w.i199, 63
  %_47.i204 = zext nneg i8 %_48.i203 to i32
  %_27.i205 = or disjoint i32 %_46.i202, %_47.i204
  %23 = or disjoint i32 %_27.i205, %_25.i201
  %.not52 = icmp eq i32 %23, 1114112
  br i1 %.not52, label %bb168.invoke.invoke, label %bb139, !prof !1075

bb139:                                            ; preds = %bb3.i206, %bb6.i186, %bb4.i174, %bb131
  %_0.sroa.4.0.i184.ph774 = phi i32 [ %23, %bb131 ], [ %_7.i207, %bb3.i206 ], [ %22, %bb6.i186 ], [ %21, %bb4.i174 ]
  %24 = icmp samesign ult i32 %_0.sroa.4.0.i184.ph774, 1114112
  tail call void @llvm.assume(i1 %24)
  %_100 = add nuw nsw i32 %_92, %_0.sroa.4.0.i184.ph774
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_89)
  %25 = and i32 %_100, 7
  %_107 = icmp eq i32 %25, 0
  %26 = zext i1 %_107 to i32
  %spec.select = add i32 %count.sroa.0.0.lcssa, %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_116)
  store ptr %_261.pre, ptr %_116, align 8
  %27 = getelementptr inbounds nuw i8, ptr %_116, i64 8
  store ptr %_332, ptr %27, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_405 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_116, i64 noundef %iter1)
  %.not53 = icmp eq i64 %_405, 0
  br i1 %.not53, label %bb143, label %bb168.invoke.invoke

bb143:                                            ; preds = %bb139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %ptr.i.i209 = load ptr, ptr %_116, align 8, !alias.scope !1085, !nonnull !23, !noundef !23
  %end_or_len.i.i210 = load ptr, ptr %27, align 8, !alias.scope !1085, !nonnull !23, !noundef !23
  %_7.i.i211 = icmp eq ptr %ptr.i.i209, %end_or_len.i.i210
  br i1 %_7.i.i211, label %bb168.invoke.invoke, label %bb14.i212

bb14.i212:                                        ; preds = %bb143
  %x.i214 = load i8, ptr %ptr.i.i209, align 1, !noalias !1082, !noundef !23
  %_6.i215 = icmp sgt i8 %x.i214, -1
  br i1 %_6.i215, label %bb3.i248, label %bb4.i216

bb4.i216:                                         ; preds = %bb14.i212
  %_18.i.i213 = getelementptr inbounds nuw i8, ptr %ptr.i.i209, i64 1
  %_30.i217 = and i8 %x.i214, 31
  %init.i218 = zext nneg i8 %_30.i217 to i32
  %_7.i10.i219 = icmp ne ptr %_18.i.i213, %end_or_len.i.i210
  tail call void @llvm.assume(i1 %_7.i10.i219)
  %y.i221 = load i8, ptr %_18.i.i213, align 1, !noalias !1082, !noundef !23
  %_34.i222 = shl nuw nsw i32 %init.i218, 6
  %_36.i223 = and i8 %y.i221, 63
  %_35.i224 = zext nneg i8 %_36.i223 to i32
  %28 = or disjoint i32 %_34.i222, %_35.i224
  %_13.i225 = icmp samesign ugt i8 %x.i214, -33
  br i1 %_13.i225, label %bb6.i228, label %bb149

bb3.i248:                                         ; preds = %bb14.i212
  %_7.i249 = zext nneg i8 %x.i214 to i32
  br label %bb149

bb6.i228:                                         ; preds = %bb4.i216
  %_18.i12.i220 = getelementptr inbounds nuw i8, ptr %ptr.i.i209, i64 2
  %_7.i17.i229 = icmp ne ptr %_18.i12.i220, %end_or_len.i.i210
  tail call void @llvm.assume(i1 %_7.i17.i229)
  %z.i231 = load i8, ptr %_18.i12.i220, align 1, !noalias !1082, !noundef !23
  %_40.i232 = shl nuw nsw i32 %_35.i224, 6
  %_42.i233 = and i8 %z.i231, 63
  %_41.i234 = zext nneg i8 %_42.i233 to i32
  %y_z.i235 = or disjoint i32 %_40.i232, %_41.i234
  %_20.i236 = shl nuw nsw i32 %init.i218, 12
  %29 = or disjoint i32 %y_z.i235, %_20.i236
  %_21.i237 = icmp samesign ugt i8 %x.i214, -17
  br i1 %_21.i237, label %bb141, label %bb149

bb141:                                            ; preds = %bb6.i228
  %_18.i19.i230 = getelementptr inbounds nuw i8, ptr %ptr.i.i209, i64 3
  %_7.i24.i239 = icmp ne ptr %_18.i19.i230, %end_or_len.i.i210
  tail call void @llvm.assume(i1 %_7.i24.i239)
  %w.i241 = load i8, ptr %_18.i19.i230, align 1, !noalias !1082, !noundef !23
  %_26.i242 = shl nuw nsw i32 %init.i218, 18
  %_25.i243 = and i32 %_26.i242, 1835008
  %_46.i244 = shl nuw nsw i32 %y_z.i235, 6
  %_48.i245 = and i8 %w.i241, 63
  %_47.i246 = zext nneg i8 %_48.i245 to i32
  %_27.i247 = or disjoint i32 %_46.i244, %_47.i246
  %30 = or disjoint i32 %_27.i247, %_25.i243
  %.not54 = icmp eq i32 %30, 1114112
  br i1 %.not54, label %bb168.invoke.invoke, label %bb149, !prof !1071

bb149:                                            ; preds = %bb3.i248, %bb6.i228, %bb4.i216, %bb141
  %_0.sroa.4.0.i226.ph782 = phi i32 [ %30, %bb141 ], [ %_7.i249, %bb3.i248 ], [ %29, %bb6.i228 ], [ %28, %bb4.i216 ]
  %31 = icmp samesign ult i32 %_0.sroa.4.0.i226.ph782, 1114112
  tail call void @llvm.assume(i1 %31)
  %32 = shl nuw nsw i32 %_0.sroa.4.0.i226.ph782, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_124)
  store ptr %_261.pre, ptr %_124, align 8
  %33 = getelementptr inbounds nuw i8, ptr %_124, i64 8
  store ptr %_332, ptr %33, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_428 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_124, i64 noundef %_91.pre-phi)
  %.not55 = icmp eq i64 %_428, 0
  br i1 %.not55, label %bb153, label %bb168.invoke.invoke

bb153:                                            ; preds = %bb149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %ptr.i.i251 = load ptr, ptr %_124, align 8, !alias.scope !1091, !nonnull !23, !noundef !23
  %end_or_len.i.i252 = load ptr, ptr %33, align 8, !alias.scope !1091, !nonnull !23, !noundef !23
  %_7.i.i253 = icmp eq ptr %ptr.i.i251, %end_or_len.i.i252
  br i1 %_7.i.i253, label %bb168.invoke.invoke, label %bb14.i254

bb14.i254:                                        ; preds = %bb153
  %x.i256 = load i8, ptr %ptr.i.i251, align 1, !noalias !1088, !noundef !23
  %_6.i257 = icmp sgt i8 %x.i256, -1
  br i1 %_6.i257, label %bb3.i290, label %bb4.i258

bb4.i258:                                         ; preds = %bb14.i254
  %_18.i.i255 = getelementptr inbounds nuw i8, ptr %ptr.i.i251, i64 1
  %_30.i259 = and i8 %x.i256, 31
  %init.i260 = zext nneg i8 %_30.i259 to i32
  %_7.i10.i261 = icmp ne ptr %_18.i.i255, %end_or_len.i.i252
  tail call void @llvm.assume(i1 %_7.i10.i261)
  %y.i263 = load i8, ptr %_18.i.i255, align 1, !noalias !1088, !noundef !23
  %_34.i264 = shl nuw nsw i32 %init.i260, 6
  %_36.i265 = and i8 %y.i263, 63
  %_35.i266 = zext nneg i8 %_36.i265 to i32
  %34 = or disjoint i32 %_34.i264, %_35.i266
  %_13.i267 = icmp samesign ugt i8 %x.i256, -33
  br i1 %_13.i267, label %bb6.i270, label %bb163

bb3.i290:                                         ; preds = %bb14.i254
  %_7.i291 = zext nneg i8 %x.i256 to i32
  br label %bb163

bb6.i270:                                         ; preds = %bb4.i258
  %_18.i12.i262 = getelementptr inbounds nuw i8, ptr %ptr.i.i251, i64 2
  %_7.i17.i271 = icmp ne ptr %_18.i12.i262, %end_or_len.i.i252
  tail call void @llvm.assume(i1 %_7.i17.i271)
  %z.i273 = load i8, ptr %_18.i12.i262, align 1, !noalias !1088, !noundef !23
  %_40.i274 = shl nuw nsw i32 %_35.i266, 6
  %_42.i275 = and i8 %z.i273, 63
  %_41.i276 = zext nneg i8 %_42.i275 to i32
  %y_z.i277 = or disjoint i32 %_40.i274, %_41.i276
  %_20.i278 = shl nuw nsw i32 %init.i260, 12
  %35 = or disjoint i32 %y_z.i277, %_20.i278
  %_21.i279 = icmp samesign ugt i8 %x.i256, -17
  br i1 %_21.i279, label %bb151, label %bb163

bb151:                                            ; preds = %bb6.i270
  %_18.i19.i272 = getelementptr inbounds nuw i8, ptr %ptr.i.i251, i64 3
  %_7.i24.i281 = icmp ne ptr %_18.i19.i272, %end_or_len.i.i252
  tail call void @llvm.assume(i1 %_7.i24.i281)
  %w.i283 = load i8, ptr %_18.i19.i272, align 1, !noalias !1088, !noundef !23
  %_26.i284 = shl nuw nsw i32 %init.i260, 18
  %_25.i285 = and i32 %_26.i284, 1835008
  %_46.i286 = shl nuw nsw i32 %y_z.i277, 6
  %_48.i287 = and i8 %w.i283, 63
  %_47.i288 = zext nneg i8 %_48.i287 to i32
  %_27.i289 = or disjoint i32 %_46.i286, %_47.i288
  %36 = or disjoint i32 %_27.i289, %_25.i285
  %.not56 = icmp eq i32 %36, 1114112
  br i1 %.not56, label %bb168.invoke.invoke, label %bb163, !prof !1071

bb163:                                            ; preds = %bb3.i290, %bb6.i270, %bb4.i258, %bb151
  %_0.sroa.4.0.i268.ph790 = phi i32 [ %36, %bb151 ], [ %_7.i291, %bb3.i290 ], [ %35, %bb6.i270 ], [ %34, %bb4.i258 ]
  %37 = icmp samesign ult i32 %_0.sroa.4.0.i268.ph790, 1114112
  tail call void @llvm.assume(i1 %37)
  %38 = shl nuw nsw i32 %_0.sroa.4.0.i268.ph790, 1
  %_118 = add nuw nsw i32 %38, %32
  br i1 %_6.i131, label %bb3.i347, label %bb4.i315

bb4.i315:                                         ; preds = %bb163
  %_18.i.i312 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 1
  %_30.i316 = and i8 %x.i130, 31
  %init.i317 = zext nneg i8 %_30.i316 to i32
  %_7.i10.i318 = icmp samesign ne i64 %len, 1
  tail call void @llvm.assume(i1 %_7.i10.i318)
  %y.i320 = load i8, ptr %_18.i.i312, align 1, !noalias !1094, !noundef !23
  %_34.i321 = shl nuw nsw i32 %init.i317, 6
  %_36.i322 = and i8 %y.i320, 63
  %_35.i323 = zext nneg i8 %_36.i322 to i32
  %39 = or disjoint i32 %_34.i321, %_35.i323
  %_13.i324 = icmp samesign ugt i8 %x.i130, -33
  br i1 %_13.i324, label %bb6.i327, label %bb169

bb3.i347:                                         ; preds = %bb163
  %_7.i348 = zext nneg i8 %x.i130 to i32
  br label %bb169

bb6.i327:                                         ; preds = %bb4.i315
  %_18.i12.i319 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 2
  %_7.i17.i328 = icmp samesign ne i64 %len, 2
  tail call void @llvm.assume(i1 %_7.i17.i328)
  %z.i330 = load i8, ptr %_18.i12.i319, align 1, !noalias !1094, !noundef !23
  %_40.i331 = shl nuw nsw i32 %_35.i323, 6
  %_42.i332 = and i8 %z.i330, 63
  %_41.i333 = zext nneg i8 %_42.i332 to i32
  %y_z.i334 = or disjoint i32 %_40.i331, %_41.i333
  %_20.i335 = shl nuw nsw i32 %init.i317, 12
  %40 = or disjoint i32 %y_z.i334, %_20.i335
  %_21.i336 = icmp samesign ugt i8 %x.i130, -17
  br i1 %_21.i336, label %bb161, label %bb169

bb161:                                            ; preds = %bb6.i327
  %_18.i19.i329 = getelementptr inbounds nuw i8, ptr %_261.pre, i64 3
  %_7.i24.i338 = icmp samesign ne i64 %len, 3
  tail call void @llvm.assume(i1 %_7.i24.i338)
  %w.i340 = load i8, ptr %_18.i19.i329, align 1, !noalias !1094, !noundef !23
  %_26.i341 = shl nuw nsw i32 %init.i317, 18
  %_25.i342 = and i32 %_26.i341, 1835008
  %_46.i343 = shl nuw nsw i32 %y_z.i334, 6
  %_48.i344 = and i8 %w.i340, 63
  %_47.i345 = zext nneg i8 %_48.i344 to i32
  %_27.i346 = or disjoint i32 %_46.i343, %_47.i345
  %41 = or disjoint i32 %_27.i346, %_25.i342
  %.not58 = icmp eq i32 %41, 1114112
  br i1 %.not58, label %bb168.invoke.invoke, label %bb169, !prof !1075

bb169:                                            ; preds = %bb4.i315, %bb6.i327, %bb3.i347, %bb161
  %_0.sroa.4.0.i325845 = phi i32 [ %41, %bb161 ], [ %39, %bb4.i315 ], [ %40, %bb6.i327 ], [ %_7.i348, %bb3.i347 ]
  %42 = icmp samesign ult i32 %_0.sroa.4.0.i325845, 1114112
  tail call void @llvm.assume(i1 %42)
  %_126 = add nuw nsw i32 %_118, %_0.sroa.4.0.i325845
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_124)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_116)
  %43 = and i32 %_126, 7
  %_133 = icmp eq i32 %43, 0
  %44 = zext i1 %_133 to i32
  %spec.select65 = add i32 %spec.select, %44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %self1.i.i.i.i1.i.i350 = load i64, ptr %n, align 8, !range !1058, !alias.scope !1112, !noalias !1115, !noundef !23
  %_6.i.i.i.i2.i.i351 = icmp eq i64 %self1.i.i.i.i1.i.i350, 0
  br i1 %_6.i.i.i.i2.i.i351, label %bb28, label %bb2.i.i.i3.i.i352

bb2.i.i.i3.i.i352:                                ; preds = %bb169
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_261.pre, i64 noundef %self1.i.i.i.i1.i.i350, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1117
  br label %bb28

bb168.invoke.invoke:                              ; preds = %bb83, %bb15, %bb81, %bb93, %bb89, %bb91, %bb103, %bb99, %bb101, %bb113, %bb16, %bb111, %bb123, %bb121, %bb62.i, %bb131, %bb143, %bb139, %bb141, %bb153, %bb149, %bb151, %bb161
  %45 = phi ptr [ @alloc_aff04ca7ece2266b4e912ca2610a3fe7, %bb113 ], [ @alloc_aff04ca7ece2266b4e912ca2610a3fe7, %bb16 ], [ @alloc_aff04ca7ece2266b4e912ca2610a3fe7, %bb111 ], [ @alloc_76d73a58eed2b39d12bcc65fddb3dcf0, %bb123 ], [ @alloc_76d73a58eed2b39d12bcc65fddb3dcf0, %bb121 ], [ @alloc_a26379ff7ed3c4897352a8231dbc7da9, %bb62.i ], [ @alloc_a26379ff7ed3c4897352a8231dbc7da9, %bb131 ], [ @alloc_5c186e71de15f38f7620dd99b769c1c3, %bb143 ], [ @alloc_5c186e71de15f38f7620dd99b769c1c3, %bb139 ], [ @alloc_5c186e71de15f38f7620dd99b769c1c3, %bb141 ], [ @alloc_5c64ffd5cf41e19f1a0a07197133a42e, %bb153 ], [ @alloc_5c64ffd5cf41e19f1a0a07197133a42e, %bb149 ], [ @alloc_5c64ffd5cf41e19f1a0a07197133a42e, %bb151 ], [ @alloc_cf4e2ad24a3eb23b6280279b1dd3f575, %bb161 ], [ @alloc_c60424e091d1bd56632151c04195edfa, %bb101 ], [ @alloc_c60424e091d1bd56632151c04195edfa, %bb99 ], [ @alloc_c60424e091d1bd56632151c04195edfa, %bb103 ], [ @alloc_1db0fa8dcd1703b9f1024addf5345df1, %bb91 ], [ @alloc_1db0fa8dcd1703b9f1024addf5345df1, %bb89 ], [ @alloc_1db0fa8dcd1703b9f1024addf5345df1, %bb93 ], [ @alloc_605b0453e1ec064f253990cf346c53bb, %bb81 ], [ @alloc_605b0453e1ec064f253990cf346c53bb, %bb15 ], [ @alloc_605b0453e1ec064f253990cf346c53bb, %bb83 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #20
          to label %bb168.invoke.cont unwind label %cleanup

bb168.invoke.cont:                                ; preds = %bb168.invoke.invoke
  unreachable

bb28:                                             ; preds = %bb2.i.i.i3.i.i698, %bb27, %bb2.i.i.i3.i.i352, %bb169
  %count.sroa.0.3 = phi i32 [ %spec.select65, %bb169 ], [ %spec.select65, %bb2.i.i.i3.i.i352 ], [ %count.sroa.0.6, %bb27 ], [ %count.sroa.0.6, %bb2.i.i.i3.i.i698 ]
  ret i32 %count.sroa.0.3

bb83:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %ptr.i.i355 = load ptr, ptr %_61, align 8, !alias.scope !1121, !nonnull !23, !noundef !23
  %end_or_len.i.i356 = load ptr, ptr %3, align 8, !alias.scope !1121, !nonnull !23, !noundef !23
  %_7.i.i357 = icmp eq ptr %ptr.i.i355, %end_or_len.i.i356
  br i1 %_7.i.i357, label %bb168.invoke.invoke, label %bb14.i358

bb14.i358:                                        ; preds = %bb83
  %x.i360 = load i8, ptr %ptr.i.i355, align 1, !noalias !1118, !noundef !23
  %_6.i361 = icmp sgt i8 %x.i360, -1
  br i1 %_6.i361, label %bb3.i394, label %bb4.i362

bb4.i362:                                         ; preds = %bb14.i358
  %_18.i.i359 = getelementptr inbounds nuw i8, ptr %ptr.i.i355, i64 1
  %_30.i363 = and i8 %x.i360, 31
  %init.i364 = zext nneg i8 %_30.i363 to i32
  %_7.i10.i365 = icmp ne ptr %_18.i.i359, %end_or_len.i.i356
  tail call void @llvm.assume(i1 %_7.i10.i365)
  %y.i367 = load i8, ptr %_18.i.i359, align 1, !noalias !1118, !noundef !23
  %_34.i368 = shl nuw nsw i32 %init.i364, 6
  %_36.i369 = and i8 %y.i367, 63
  %_35.i370 = zext nneg i8 %_36.i369 to i32
  %46 = or disjoint i32 %_34.i368, %_35.i370
  %_13.i371 = icmp samesign ugt i8 %x.i360, -33
  br i1 %_13.i371, label %bb6.i374, label %bb89

bb3.i394:                                         ; preds = %bb14.i358
  %_7.i395 = zext nneg i8 %x.i360 to i32
  br label %bb89

bb6.i374:                                         ; preds = %bb4.i362
  %_18.i12.i366 = getelementptr inbounds nuw i8, ptr %ptr.i.i355, i64 2
  %_7.i17.i375 = icmp ne ptr %_18.i12.i366, %end_or_len.i.i356
  tail call void @llvm.assume(i1 %_7.i17.i375)
  %z.i377 = load i8, ptr %_18.i12.i366, align 1, !noalias !1118, !noundef !23
  %_40.i378 = shl nuw nsw i32 %_35.i370, 6
  %_42.i379 = and i8 %z.i377, 63
  %_41.i380 = zext nneg i8 %_42.i379 to i32
  %y_z.i381 = or disjoint i32 %_40.i378, %_41.i380
  %_20.i382 = shl nuw nsw i32 %init.i364, 12
  %47 = or disjoint i32 %y_z.i381, %_20.i382
  %_21.i383 = icmp samesign ugt i8 %x.i360, -17
  br i1 %_21.i383, label %bb81, label %bb89

bb81:                                             ; preds = %bb6.i374
  %_18.i19.i376 = getelementptr inbounds nuw i8, ptr %ptr.i.i355, i64 3
  %_7.i24.i385 = icmp ne ptr %_18.i19.i376, %end_or_len.i.i356
  tail call void @llvm.assume(i1 %_7.i24.i385)
  %w.i387 = load i8, ptr %_18.i19.i376, align 1, !noalias !1118, !noundef !23
  %_26.i388 = shl nuw nsw i32 %init.i364, 18
  %_25.i389 = and i32 %_26.i388, 1835008
  %_46.i390 = shl nuw nsw i32 %y_z.i381, 6
  %_48.i391 = and i8 %w.i387, 63
  %_47.i392 = zext nneg i8 %_48.i391 to i32
  %_27.i393 = or disjoint i32 %_46.i390, %_47.i392
  %48 = or disjoint i32 %_27.i393, %_25.i389
  %.not60 = icmp eq i32 %48, 1114112
  br i1 %.not60, label %bb168.invoke.invoke, label %bb89, !prof !1071

bb89:                                             ; preds = %bb3.i394, %bb6.i374, %bb4.i362, %bb81
  %_0.sroa.4.0.i372.ph798 = phi i32 [ %48, %bb81 ], [ %_7.i395, %bb3.i394 ], [ %47, %bb6.i374 ], [ %46, %bb4.i362 ]
  %49 = icmp samesign ult i32 %_0.sroa.4.0.i372.ph798, 1114112
  tail call void @llvm.assume(i1 %49)
  %50 = shl nuw nsw i32 %_0.sroa.4.0.i372.ph798, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_69)
  store ptr %_261.pre, ptr %_69, align 8
  store ptr %_268, ptr %4, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_295 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_69, i64 noundef %7)
  %.not61 = icmp eq i64 %_295, 0
  br i1 %.not61, label %bb93, label %bb168.invoke.invoke

bb93:                                             ; preds = %bb89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %ptr.i.i397 = load ptr, ptr %_69, align 8, !alias.scope !1127, !nonnull !23, !noundef !23
  %end_or_len.i.i398 = load ptr, ptr %4, align 8, !alias.scope !1127, !nonnull !23, !noundef !23
  %_7.i.i399 = icmp eq ptr %ptr.i.i397, %end_or_len.i.i398
  br i1 %_7.i.i399, label %bb168.invoke.invoke, label %bb14.i400

bb14.i400:                                        ; preds = %bb93
  %x.i402 = load i8, ptr %ptr.i.i397, align 1, !noalias !1124, !noundef !23
  %_6.i403 = icmp sgt i8 %x.i402, -1
  br i1 %_6.i403, label %bb3.i436, label %bb4.i404

bb4.i404:                                         ; preds = %bb14.i400
  %_18.i.i401 = getelementptr inbounds nuw i8, ptr %ptr.i.i397, i64 1
  %_30.i405 = and i8 %x.i402, 31
  %init.i406 = zext nneg i8 %_30.i405 to i32
  %_7.i10.i407 = icmp ne ptr %_18.i.i401, %end_or_len.i.i398
  tail call void @llvm.assume(i1 %_7.i10.i407)
  %y.i409 = load i8, ptr %_18.i.i401, align 1, !noalias !1124, !noundef !23
  %_34.i410 = shl nuw nsw i32 %init.i406, 6
  %_36.i411 = and i8 %y.i409, 63
  %_35.i412 = zext nneg i8 %_36.i411 to i32
  %51 = or disjoint i32 %_34.i410, %_35.i412
  %_13.i413 = icmp samesign ugt i8 %x.i402, -33
  br i1 %_13.i413, label %bb6.i416, label %bb99

bb3.i436:                                         ; preds = %bb14.i400
  %_7.i437 = zext nneg i8 %x.i402 to i32
  br label %bb99

bb6.i416:                                         ; preds = %bb4.i404
  %_18.i12.i408 = getelementptr inbounds nuw i8, ptr %ptr.i.i397, i64 2
  %_7.i17.i417 = icmp ne ptr %_18.i12.i408, %end_or_len.i.i398
  tail call void @llvm.assume(i1 %_7.i17.i417)
  %z.i419 = load i8, ptr %_18.i12.i408, align 1, !noalias !1124, !noundef !23
  %_40.i420 = shl nuw nsw i32 %_35.i412, 6
  %_42.i421 = and i8 %z.i419, 63
  %_41.i422 = zext nneg i8 %_42.i421 to i32
  %y_z.i423 = or disjoint i32 %_40.i420, %_41.i422
  %_20.i424 = shl nuw nsw i32 %init.i406, 12
  %52 = or disjoint i32 %y_z.i423, %_20.i424
  %_21.i425 = icmp samesign ugt i8 %x.i402, -17
  br i1 %_21.i425, label %bb91, label %bb99

bb91:                                             ; preds = %bb6.i416
  %_18.i19.i418 = getelementptr inbounds nuw i8, ptr %ptr.i.i397, i64 3
  %_7.i24.i427 = icmp ne ptr %_18.i19.i418, %end_or_len.i.i398
  tail call void @llvm.assume(i1 %_7.i24.i427)
  %w.i429 = load i8, ptr %_18.i19.i418, align 1, !noalias !1124, !noundef !23
  %_26.i430 = shl nuw nsw i32 %init.i406, 18
  %_25.i431 = and i32 %_26.i430, 1835008
  %_46.i432 = shl nuw nsw i32 %y_z.i423, 6
  %_48.i433 = and i8 %w.i429, 63
  %_47.i434 = zext nneg i8 %_48.i433 to i32
  %_27.i435 = or disjoint i32 %_46.i432, %_47.i434
  %53 = or disjoint i32 %_27.i435, %_25.i431
  %.not62 = icmp eq i32 %53, 1114112
  br i1 %.not62, label %bb168.invoke.invoke, label %bb99, !prof !1071

bb99:                                             ; preds = %bb3.i436, %bb6.i416, %bb4.i404, %bb91
  %_0.sroa.4.0.i414.ph806 = phi i32 [ %53, %bb91 ], [ %_7.i437, %bb3.i436 ], [ %52, %bb6.i416 ], [ %51, %bb4.i404 ]
  %54 = icmp samesign ult i32 %_0.sroa.4.0.i414.ph806, 1114112
  tail call void @llvm.assume(i1 %54)
  %55 = shl nuw nsw i32 %_0.sroa.4.0.i414.ph806, 1
  %_63 = add nuw nsw i32 %55, %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_77)
  store ptr %_261.pre, ptr %_77, align 8
  store ptr %_268, ptr %5, align 8
  %_79 = add i64 %iter.sroa.0.0835, 2
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_318 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_77, i64 noundef %_79)
  %.not63 = icmp eq i64 %_318, 0
  br i1 %.not63, label %bb103, label %bb168.invoke.invoke

bb103:                                            ; preds = %bb99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %ptr.i.i439 = load ptr, ptr %_77, align 8, !alias.scope !1133, !nonnull !23, !noundef !23
  %end_or_len.i.i440 = load ptr, ptr %5, align 8, !alias.scope !1133, !nonnull !23, !noundef !23
  %_7.i.i441 = icmp eq ptr %ptr.i.i439, %end_or_len.i.i440
  br i1 %_7.i.i441, label %bb168.invoke.invoke, label %bb14.i442

bb14.i442:                                        ; preds = %bb103
  %x.i444 = load i8, ptr %ptr.i.i439, align 1, !noalias !1130, !noundef !23
  %_6.i445 = icmp sgt i8 %x.i444, -1
  br i1 %_6.i445, label %bb3.i478, label %bb4.i446

bb4.i446:                                         ; preds = %bb14.i442
  %_18.i.i443 = getelementptr inbounds nuw i8, ptr %ptr.i.i439, i64 1
  %_30.i447 = and i8 %x.i444, 31
  %init.i448 = zext nneg i8 %_30.i447 to i32
  %_7.i10.i449 = icmp ne ptr %_18.i.i443, %end_or_len.i.i440
  tail call void @llvm.assume(i1 %_7.i10.i449)
  %y.i451 = load i8, ptr %_18.i.i443, align 1, !noalias !1130, !noundef !23
  %_34.i452 = shl nuw nsw i32 %init.i448, 6
  %_36.i453 = and i8 %y.i451, 63
  %_35.i454 = zext nneg i8 %_36.i453 to i32
  %56 = or disjoint i32 %_34.i452, %_35.i454
  %_13.i455 = icmp samesign ugt i8 %x.i444, -33
  br i1 %_13.i455, label %bb6.i458, label %bb109

bb3.i478:                                         ; preds = %bb14.i442
  %_7.i479 = zext nneg i8 %x.i444 to i32
  br label %bb109

bb6.i458:                                         ; preds = %bb4.i446
  %_18.i12.i450 = getelementptr inbounds nuw i8, ptr %ptr.i.i439, i64 2
  %_7.i17.i459 = icmp ne ptr %_18.i12.i450, %end_or_len.i.i440
  tail call void @llvm.assume(i1 %_7.i17.i459)
  %z.i461 = load i8, ptr %_18.i12.i450, align 1, !noalias !1130, !noundef !23
  %_40.i462 = shl nuw nsw i32 %_35.i454, 6
  %_42.i463 = and i8 %z.i461, 63
  %_41.i464 = zext nneg i8 %_42.i463 to i32
  %y_z.i465 = or disjoint i32 %_40.i462, %_41.i464
  %_20.i466 = shl nuw nsw i32 %init.i448, 12
  %57 = or disjoint i32 %y_z.i465, %_20.i466
  %_21.i467 = icmp samesign ugt i8 %x.i444, -17
  br i1 %_21.i467, label %bb101, label %bb109

bb101:                                            ; preds = %bb6.i458
  %_18.i19.i460 = getelementptr inbounds nuw i8, ptr %ptr.i.i439, i64 3
  %_7.i24.i469 = icmp ne ptr %_18.i19.i460, %end_or_len.i.i440
  tail call void @llvm.assume(i1 %_7.i24.i469)
  %w.i471 = load i8, ptr %_18.i19.i460, align 1, !noalias !1130, !noundef !23
  %_26.i472 = shl nuw nsw i32 %init.i448, 18
  %_25.i473 = and i32 %_26.i472, 1835008
  %_46.i474 = shl nuw nsw i32 %y_z.i465, 6
  %_48.i475 = and i8 %w.i471, 63
  %_47.i476 = zext nneg i8 %_48.i475 to i32
  %_27.i477 = or disjoint i32 %_46.i474, %_47.i476
  %58 = or disjoint i32 %_27.i477, %_25.i473
  %.not64 = icmp eq i32 %58, 1114112
  br i1 %.not64, label %bb168.invoke.invoke, label %bb109, !prof !1071

bb109:                                            ; preds = %bb3.i478, %bb6.i458, %bb4.i446, %bb101
  %_0.sroa.4.0.i456.ph814 = phi i32 [ %58, %bb101 ], [ %_7.i479, %bb3.i478 ], [ %57, %bb6.i458 ], [ %56, %bb4.i446 ]
  %59 = icmp samesign ult i32 %_0.sroa.4.0.i456.ph814, 1114112
  tail call void @llvm.assume(i1 %59)
  %_72 = add nuw nsw i32 %_63, %_0.sroa.4.0.i456.ph814
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_77)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_69)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_61)
  %60 = and i32 %_72, 7
  %_80 = icmp eq i32 %60, 0
  %61 = zext i1 %_80 to i32
  %spec.select66 = add i32 %count.sroa.0.0836, %61
  %62 = add i64 %7, 1
  %exitcond.not = icmp eq i64 %62, %6
  br i1 %exitcond.not, label %bb16, label %bb15

bb40:                                             ; preds = %start
  %63 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_160 = load ptr, ptr %63, align 8, !nonnull !23, !noundef !23
  %x.i486 = load i8, ptr %_160, align 1, !noalias !1136, !noundef !23
  %_6.i487 = icmp sgt i8 %x.i486, -1
  br i1 %_6.i487, label %bb3.i520, label %bb4.i488

bb4.i488:                                         ; preds = %bb40
  %_18.i.i485 = getelementptr inbounds nuw i8, ptr %_160, i64 1
  %_30.i489 = and i8 %x.i486, 31
  %init.i490 = zext nneg i8 %_30.i489 to i32
  %y.i493 = load i8, ptr %_18.i.i485, align 1, !noalias !1136, !noundef !23
  %_34.i494 = shl nuw nsw i32 %init.i490, 6
  %_36.i495 = and i8 %y.i493, 63
  %_35.i496 = zext nneg i8 %_36.i495 to i32
  %64 = or disjoint i32 %_34.i494, %_35.i496
  %_13.i497 = icmp ult i8 %x.i486, -32
  tail call void @llvm.assume(i1 %_13.i497)
  br label %bb62.i529

bb3.i520:                                         ; preds = %bb40
  %_7.i521 = zext nneg i8 %x.i486 to i32
  br label %bb62.i529

bb62.i529:                                        ; preds = %bb4.i488, %bb3.i520
  %_0.sroa.4.0.i498848 = phi i32 [ %64, %bb4.i488 ], [ %_7.i521, %bb3.i520 ]
  %65 = icmp samesign ult i32 %_0.sroa.4.0.i498848, 1114112
  tail call void @llvm.assume(i1 %65)
  %66 = shl nuw nsw i32 %_0.sroa.4.0.i498848, 1
  %_130.i531 = zext i8 %x.i486 to i64
  %67 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i531
  %_128.i532 = load i8, ptr %67, align 1, !noalias !1139, !noundef !23
  %slurp.i533 = zext nneg i8 %_128.i532 to i64
  %_19.i38.i534.ptr.ptr.ptr.ptr = getelementptr inbounds nuw i8, ptr %_160, i64 %slurp.i533
  %.not28.i535 = icmp ult i8 %_128.i532, 3
  tail call void @llvm.assume(i1 %.not28.i535)
  %_7.i.i541 = icmp eq i8 %_128.i532, 2
  br i1 %_7.i.i541, label %bb65.invoke, label %bb14.i542

bb14.i542:                                        ; preds = %bb62.i529
  %x.i544 = load i8, ptr %_19.i38.i534.ptr.ptr.ptr.ptr, align 1, !noalias !1142, !noundef !23
  %_6.i545 = icmp sgt i8 %x.i544, -1
  br i1 %_6.i545, label %bb3.i636, label %bb4.i546

bb4.i546:                                         ; preds = %bb14.i542
  %_19.i38.i534.add = add nuw nsw i64 %slurp.i533, 1
  %_18.i.i543.ptr = getelementptr inbounds nuw i8, ptr %_160, i64 %_19.i38.i534.add
  %_30.i547 = and i8 %x.i544, 31
  %init.i548 = zext nneg i8 %_30.i547 to i32
  %_7.i10.i549 = icmp ne i64 %_19.i38.i534.add, 2
  tail call void @llvm.assume(i1 %_7.i10.i549)
  %y.i551 = load i8, ptr %_18.i.i543.ptr, align 1, !noalias !1142, !noundef !23
  %_34.i552 = shl nuw nsw i32 %init.i548, 6
  %_36.i553 = and i8 %y.i551, 63
  %_35.i554 = zext nneg i8 %_36.i553 to i32
  %68 = or disjoint i32 %_34.i552, %_35.i554
  %_13.i555 = icmp samesign ugt i8 %x.i544, -33
  br i1 %_13.i555, label %bb6.i558, label %bb4.i604

bb6.i558:                                         ; preds = %bb4.i546
  %_18.i12.i550 = getelementptr inbounds nuw i8, ptr %_19.i38.i534.ptr.ptr.ptr.ptr, i64 2
  %_7.i17.i559 = icmp ne i8 %_128.i532, 0
  tail call void @llvm.assume(i1 %_7.i17.i559)
  %z.i561 = load i8, ptr %_18.i12.i550, align 1, !noalias !1142, !noundef !23
  %_40.i562 = shl nuw nsw i32 %_35.i554, 6
  %_42.i563 = and i8 %z.i561, 63
  %_41.i564 = zext nneg i8 %_42.i563 to i32
  %y_z.i565 = or disjoint i32 %_40.i562, %_41.i564
  %_20.i566 = shl nuw nsw i32 %init.i548, 12
  %69 = or disjoint i32 %y_z.i565, %_20.i566
  %_21.i567 = icmp samesign ugt i8 %x.i544, -17
  br i1 %_21.i567, label %bb48, label %bb4.i604

bb48:                                             ; preds = %bb6.i558
  %70 = getelementptr inbounds nuw i8, ptr %_160, i64 %slurp.i533
  %_18.i19.i560.ptr = getelementptr inbounds nuw i8, ptr %70, i64 3
  %w.i571 = load i8, ptr %_18.i19.i560.ptr, align 1, !noalias !1142, !noundef !23
  %_26.i572 = shl nuw nsw i32 %init.i548, 18
  %_25.i573 = and i32 %_26.i572, 1835008
  %_46.i574 = shl nuw nsw i32 %y_z.i565, 6
  %_48.i575 = and i8 %w.i571, 63
  %_47.i576 = zext nneg i8 %_48.i575 to i32
  %_27.i577 = or disjoint i32 %_46.i574, %_47.i576
  %71 = or disjoint i32 %_27.i577, %_25.i573
  %.not41 = icmp eq i32 %71, 1114112
  br i1 %.not41, label %bb65.invoke, label %bb4.i604, !prof !1075

bb4.i604:                                         ; preds = %bb6.i558, %bb4.i546, %bb48
  %_0.sroa.4.0.i556.ph822.ph = phi i32 [ %68, %bb4.i546 ], [ %69, %bb6.i558 ], [ %71, %bb48 ]
  %72 = icmp samesign ult i32 %_0.sroa.4.0.i556.ph822.ph, 1114112
  tail call void @llvm.assume(i1 %72)
  %_22850 = add nuw nsw i32 %_0.sroa.4.0.i556.ph822.ph, %66
  %_19.i38.i534.ptr.ptr.add = add nuw nsw i64 %slurp.i533, 1
  %_18.i.i601.ptr = getelementptr inbounds nuw i8, ptr %_160, i64 %_19.i38.i534.ptr.ptr.add
  %_30.i605 = and i8 %x.i544, 31
  %init.i606 = zext nneg i8 %_30.i605 to i32
  %_7.i10.i607 = icmp ne i64 %_19.i38.i534.ptr.ptr.add, 2
  tail call void @llvm.assume(i1 %_7.i10.i607)
  %y.i609 = load i8, ptr %_18.i.i601.ptr, align 1, !noalias !1145, !noundef !23
  %_34.i610 = shl nuw nsw i32 %init.i606, 6
  %_36.i611 = and i8 %y.i609, 63
  %_35.i612 = zext nneg i8 %_36.i611 to i32
  %73 = or disjoint i32 %_34.i610, %_35.i612
  %_13.i613 = icmp samesign ugt i8 %x.i544, -33
  br i1 %_13.i613, label %bb6.i616, label %bb70

bb3.i636:                                         ; preds = %bb14.i542
  %_7.i579 = zext nneg i8 %x.i544 to i32
  %_22 = add nuw nsw i32 %66, %_7.i579
  %_7.i637 = zext nneg i8 %x.i544 to i32
  br label %bb70

bb6.i616:                                         ; preds = %bb4.i604
  %_18.i12.i608 = getelementptr inbounds nuw i8, ptr %_19.i38.i534.ptr.ptr.ptr.ptr, i64 2
  %_7.i17.i617 = icmp ne i8 %_128.i532, 0
  tail call void @llvm.assume(i1 %_7.i17.i617)
  %z.i619 = load i8, ptr %_18.i12.i608, align 1, !noalias !1145, !noundef !23
  %_40.i620 = shl nuw nsw i32 %_35.i612, 6
  %_42.i621 = and i8 %z.i619, 63
  %_41.i622 = zext nneg i8 %_42.i621 to i32
  %y_z.i623 = or disjoint i32 %_40.i620, %_41.i622
  %_20.i624 = shl nuw nsw i32 %init.i606, 12
  %74 = or disjoint i32 %y_z.i623, %_20.i624
  %_21.i625 = icmp samesign ugt i8 %x.i544, -17
  br i1 %_21.i625, label %bb58, label %bb70

bb58:                                             ; preds = %bb6.i616
  %75 = getelementptr inbounds nuw i8, ptr %_160, i64 %slurp.i533
  %_18.i19.i618.ptr = getelementptr inbounds nuw i8, ptr %75, i64 3
  %w.i629 = load i8, ptr %_18.i19.i618.ptr, align 1, !noalias !1145, !noundef !23
  %_26.i630 = shl nuw nsw i32 %init.i606, 18
  %_25.i631 = and i32 %_26.i630, 1835008
  %_46.i632 = shl nuw nsw i32 %y_z.i623, 6
  %_48.i633 = and i8 %w.i629, 63
  %_47.i634 = zext nneg i8 %_48.i633 to i32
  %_27.i635 = or disjoint i32 %_46.i632, %_47.i634
  %76 = or disjoint i32 %_27.i635, %_25.i631
  %.not43 = icmp eq i32 %76, 1114112
  br i1 %.not43, label %bb65.invoke, label %bb70, !prof !1075

bb65.invoke:                                      ; preds = %bb58, %bb48, %bb62.i529
  %77 = phi ptr [ @alloc_1253c86776c1fc22861c297c6439ab08, %bb62.i529 ], [ @alloc_1253c86776c1fc22861c297c6439ab08, %bb48 ], [ @alloc_aa83010b9d2da258e580147548dfb862, %bb58 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %77) #20
          to label %bb65.cont unwind label %cleanup

bb65.cont:                                        ; preds = %bb65.invoke
  unreachable

bb70:                                             ; preds = %bb3.i636, %bb6.i616, %bb4.i604, %bb58
  %_22851 = phi i32 [ %_22850, %bb58 ], [ %_22, %bb3.i636 ], [ %_22850, %bb6.i616 ], [ %_22850, %bb4.i604 ]
  %_0.sroa.4.0.i614.ph830 = phi i32 [ %76, %bb58 ], [ %_7.i637, %bb3.i636 ], [ %74, %bb6.i616 ], [ %73, %bb4.i604 ]
  %78 = icmp samesign ult i32 %_0.sroa.4.0.i614.ph830, 1114112
  tail call void @llvm.assume(i1 %78)
  %79 = shl nuw nsw i32 %_0.sroa.4.0.i614.ph830, 1
  br i1 %_6.i487, label %bb3.i693, label %bb4.i661

bb4.i661:                                         ; preds = %bb70
  %_18.i.i658 = getelementptr inbounds nuw i8, ptr %_160, i64 1
  %_30.i662 = and i8 %x.i486, 31
  %init.i663 = zext nneg i8 %_30.i662 to i32
  %y.i666 = load i8, ptr %_18.i.i658, align 1, !noalias !1148, !noundef !23
  %_34.i667 = shl nuw nsw i32 %init.i663, 6
  %_36.i668 = and i8 %y.i666, 63
  %_35.i669 = zext nneg i8 %_36.i668 to i32
  %80 = or disjoint i32 %_34.i667, %_35.i669
  %_13.i670 = icmp ult i8 %x.i486, -32
  tail call void @llvm.assume(i1 %_13.i670)
  br label %bb76

bb3.i693:                                         ; preds = %bb70
  %_7.i694 = zext nneg i8 %x.i486 to i32
  br label %bb76

bb76:                                             ; preds = %bb4.i661, %bb3.i693
  %_0.sroa.4.0.i671855 = phi i32 [ %80, %bb4.i661 ], [ %_7.i694, %bb3.i693 ]
  %81 = icmp samesign ult i32 %_0.sroa.4.0.i671855, 1114112
  tail call void @llvm.assume(i1 %81)
  %_38 = add nuw nsw i32 %_0.sroa.4.0.i671855, %79
  %82 = and i32 %_22851, 7
  %_45 = icmp eq i32 %82, 0
  %spec.select67 = zext i1 %_45 to i32
  %83 = and i32 %_38, 7
  %_47 = icmp eq i32 %83, 0
  %84 = select i1 %_45, i32 2, i32 1
  %spec.select81 = select i1 %_47, i32 %84, i32 %spec.select67
  br label %bb27

bb27:                                             ; preds = %bb76, %bb1
  %self3.i.i.i.i4.i.i699 = phi ptr [ %_139, %bb1 ], [ %_160, %bb76 ]
  %count.sroa.0.6 = phi i32 [ %., %bb1 ], [ %spec.select81, %bb76 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %self1.i.i.i.i1.i.i696 = load i64, ptr %n, align 8, !range !1058, !alias.scope !1166, !noalias !1169, !noundef !23
  %_6.i.i.i.i2.i.i697 = icmp eq i64 %self1.i.i.i.i1.i.i696, 0
  br i1 %_6.i.i.i.i2.i.i697, label %bb28, label %bb2.i.i.i3.i.i698

bb2.i.i.i3.i.i698:                                ; preds = %bb27
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i699, i64 noundef %self1.i.i.i.i1.i.i696, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1171
  br label %bb28

bb30:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %9
}
