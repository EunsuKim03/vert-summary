define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %n.0, i64 noundef %n.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_113 = alloca [16 x i8], align 8
  %_106 = alloca [16 x i8], align 8
  %_82 = alloca [16 x i8], align 8
  %_71 = alloca [16 x i8], align 8
  %_64 = alloca [16 x i8], align 8
  %_57 = alloca [16 x i8], align 8
  switch i64 %n.1, label %bb15.lr.ph [
    i64 1, label %bb14.i653
    i64 2, label %bb14.i438
  ]

bb15.lr.ph:                                       ; preds = %start
  %iter1 = add i64 %n.1, -2
  %_210 = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  %0 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_64, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_71, i64 8
  %3 = add i64 %n.1, -1
  br label %bb15

bb15:                                             ; preds = %bb15.lr.ph, %bb111
  %4 = phi i64 [ 1, %bb15.lr.ph ], [ %54, %bb111 ]
  %count.sroa.0.0818 = phi i32 [ 0, %bb15.lr.ph ], [ %spec.select67, %bb111 ]
  %iter.sroa.0.0817 = phi i64 [ 0, %bb15.lr.ph ], [ %4, %bb111 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_57)
  store ptr %n.0, ptr %_57, align 8
  store ptr %_210, ptr %0, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_221 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_57, i64 noundef %iter.sroa.0.0817) #22
  %.not60 = icmp eq i64 %_221, 0
  br i1 %.not60, label %bb85, label %bb90

bb16:                                             ; preds = %bb111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_82)
  %_217 = getelementptr inbounds nuw i8, ptr %n.0, i64 %n.1
  store ptr %n.0, ptr %_82, align 8
  %5 = getelementptr inbounds nuw i8, ptr %_82, i64 8
  store ptr %_217, ptr %5, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_262 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_82, i64 noundef %3) #22
  %.not48 = icmp eq i64 %_262, 0
  br i1 %.not48, label %bb115, label %bb120

bb115:                                            ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %ptr.i.i = load ptr, ptr %_82, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %end_or_len.i.i = load ptr, ptr %5, align 8, !alias.scope !1043, !nonnull !23, !noundef !23
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb120, label %bb14.i

bb14.i:                                           ; preds = %bb115
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1040, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %6 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb125

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb125

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %7 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb113, label %bb125

bb113:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %8 = or disjoint i32 %_27.i, %_25.i
  %.not49 = icmp eq i32 %8, 1114112
  br i1 %.not49, label %bb120, label %bb125, !prof !1046

bb120:                                            ; preds = %bb115, %bb16, %bb113
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_661e0ec82ec133bd588f4060f0269cb9) #18
  unreachable

bb125:                                            ; preds = %bb3.i, %bb6.i, %bb4.i, %bb113
  %_0.sroa.4.0.i.ph745 = phi i32 [ %8, %bb113 ], [ %_7.i, %bb3.i ], [ %7, %bb6.i ], [ %6, %bb4.i ]
  %9 = icmp samesign ult i32 %_0.sroa.4.0.i.ph745, 1114112
  tail call void @llvm.assume(i1 %9)
  %10 = shl nuw nsw i32 %_0.sroa.4.0.i.ph745, 2
  %_7.i.i86 = icmp samesign eq i64 %n.1, 0
  br i1 %_7.i.i86, label %bb130, label %bb14.i87

bb14.i87:                                         ; preds = %bb125
  %x.i89 = load i8, ptr %n.0, align 1, !noalias !1047, !noundef !23
  %_6.i90 = icmp sgt i8 %x.i89, -1
  br i1 %_6.i90, label %bb3.i123, label %bb4.i91

bb4.i91:                                          ; preds = %bb14.i87
  %_18.i.i88 = getelementptr inbounds nuw i8, ptr %n.0, i64 1
  %_30.i92 = and i8 %x.i89, 31
  %init.i93 = zext nneg i8 %_30.i92 to i32
  %_7.i10.i94 = icmp samesign ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i94)
  %y.i96 = load i8, ptr %_18.i.i88, align 1, !noalias !1047, !noundef !23
  %_34.i97 = shl nuw nsw i32 %init.i93, 6
  %_36.i98 = and i8 %y.i96, 63
  %_35.i99 = zext nneg i8 %_36.i98 to i32
  %11 = or disjoint i32 %_34.i97, %_35.i99
  %_13.i100 = icmp samesign ugt i8 %x.i89, -33
  br i1 %_13.i100, label %bb6.i103, label %bb62.i

bb3.i123:                                         ; preds = %bb14.i87
  %_7.i124 = zext nneg i8 %x.i89 to i32
  br label %bb62.i

bb6.i103:                                         ; preds = %bb4.i91
  %_18.i12.i95 = getelementptr inbounds nuw i8, ptr %n.0, i64 2
  %_7.i17.i104 = icmp samesign ne i64 %n.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i104)
  %z.i106 = load i8, ptr %_18.i12.i95, align 1, !noalias !1047, !noundef !23
  %_40.i107 = shl nuw nsw i32 %_35.i99, 6
  %_42.i108 = and i8 %z.i106, 63
  %_41.i109 = zext nneg i8 %_42.i108 to i32
  %y_z.i110 = or disjoint i32 %_40.i107, %_41.i109
  %_20.i111 = shl nuw nsw i32 %init.i93, 12
  %12 = or disjoint i32 %y_z.i110, %_20.i111
  %_21.i112 = icmp samesign ugt i8 %x.i89, -17
  br i1 %_21.i112, label %bb123, label %bb62.i

bb123:                                            ; preds = %bb6.i103
  %_18.i19.i105 = getelementptr inbounds nuw i8, ptr %n.0, i64 3
  %_7.i24.i114 = icmp samesign ne i64 %n.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i114)
  %w.i116 = load i8, ptr %_18.i19.i105, align 1, !noalias !1047, !noundef !23
  %_26.i117 = shl nuw nsw i32 %init.i93, 18
  %_25.i118 = and i32 %_26.i117, 1835008
  %_46.i119 = shl nuw nsw i32 %y_z.i110, 6
  %_48.i120 = and i8 %w.i116, 63
  %_47.i121 = zext nneg i8 %_48.i120 to i32
  %_27.i122 = or disjoint i32 %_46.i119, %_47.i121
  %13 = or disjoint i32 %_27.i122, %_25.i118
  %.not51 = icmp eq i32 %13, 1114112
  br i1 %.not51, label %bb130, label %bb62.i, !prof !1050

bb62.i:                                           ; preds = %bb4.i91, %bb6.i103, %bb3.i123, %bb123
  %_0.sroa.4.0.i101821 = phi i32 [ %13, %bb123 ], [ %11, %bb4.i91 ], [ %12, %bb6.i103 ], [ %_7.i124, %bb3.i123 ]
  %14 = icmp samesign ult i32 %_0.sroa.4.0.i101821, 1114112
  tail call void @llvm.assume(i1 %14)
  %15 = shl nuw nsw i32 %_0.sroa.4.0.i101821, 1
  %_84 = add nuw nsw i32 %15, %10
  %_130.i = zext i8 %x.i89 to i64
  %16 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %16, align 1, !noalias !1051, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %n.0, i64 %slurp.i
  %.not28.i = icmp uge i64 %n.1, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_7.i.i128 = icmp samesign eq i64 %n.1, %slurp.i
  br i1 %_7.i.i128, label %bb140, label %bb14.i129

bb130:                                            ; preds = %bb125, %bb123
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6c7a754ecef0313288ee42bcfa0b9cb0) #18
  unreachable

bb14.i129:                                        ; preds = %bb62.i
  %x.i131 = load i8, ptr %_19.i38.i, align 1, !noalias !1054, !noundef !23
  %_6.i132 = icmp sgt i8 %x.i131, -1
  br i1 %_6.i132, label %bb3.i165, label %bb4.i133

bb4.i133:                                         ; preds = %bb14.i129
  %_18.i.i130 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 1
  %_30.i134 = and i8 %x.i131, 31
  %init.i135 = zext nneg i8 %_30.i134 to i32
  %_7.i10.i136 = icmp ne ptr %_18.i.i130, %_217
  tail call void @llvm.assume(i1 %_7.i10.i136)
  %y.i138 = load i8, ptr %_18.i.i130, align 1, !noalias !1054, !noundef !23
  %_34.i139 = shl nuw nsw i32 %init.i135, 6
  %_36.i140 = and i8 %y.i138, 63
  %_35.i141 = zext nneg i8 %_36.i140 to i32
  %17 = or disjoint i32 %_34.i139, %_35.i141
  %_13.i142 = icmp samesign ugt i8 %x.i131, -33
  br i1 %_13.i142, label %bb6.i145, label %bb141

bb3.i165:                                         ; preds = %bb14.i129
  %_7.i166 = zext nneg i8 %x.i131 to i32
  br label %bb141

bb6.i145:                                         ; preds = %bb4.i133
  %_18.i12.i137 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 2
  %_7.i17.i146 = icmp ne ptr %_18.i12.i137, %_217
  tail call void @llvm.assume(i1 %_7.i17.i146)
  %z.i148 = load i8, ptr %_18.i12.i137, align 1, !noalias !1054, !noundef !23
  %_40.i149 = shl nuw nsw i32 %_35.i141, 6
  %_42.i150 = and i8 %z.i148, 63
  %_41.i151 = zext nneg i8 %_42.i150 to i32
  %y_z.i152 = or disjoint i32 %_40.i149, %_41.i151
  %_20.i153 = shl nuw nsw i32 %init.i135, 12
  %18 = or disjoint i32 %y_z.i152, %_20.i153
  %_21.i154 = icmp samesign ugt i8 %x.i131, -17
  br i1 %_21.i154, label %bb133, label %bb141

bb133:                                            ; preds = %bb6.i145
  %_18.i19.i147 = getelementptr inbounds nuw i8, ptr %_19.i38.i, i64 3
  %_7.i24.i156 = icmp ne ptr %_18.i19.i147, %_217
  tail call void @llvm.assume(i1 %_7.i24.i156)
  %w.i158 = load i8, ptr %_18.i19.i147, align 1, !noalias !1054, !noundef !23
  %_26.i159 = shl nuw nsw i32 %init.i135, 18
  %_25.i160 = and i32 %_26.i159, 1835008
  %_46.i161 = shl nuw nsw i32 %y_z.i152, 6
  %_48.i162 = and i8 %w.i158, 63
  %_47.i163 = zext nneg i8 %_48.i162 to i32
  %_27.i164 = or disjoint i32 %_46.i161, %_47.i163
  %19 = or disjoint i32 %_27.i164, %_25.i160
  %.not53 = icmp eq i32 %19, 1114112
  br i1 %.not53, label %bb140, label %bb141, !prof !1050

bb141:                                            ; preds = %bb3.i165, %bb6.i145, %bb4.i133, %bb133
  %_0.sroa.4.0.i143.ph753 = phi i32 [ %19, %bb133 ], [ %_7.i166, %bb3.i165 ], [ %18, %bb6.i145 ], [ %17, %bb4.i133 ]
  %20 = icmp samesign ult i32 %_0.sroa.4.0.i143.ph753, 1114112
  tail call void @llvm.assume(i1 %20)
  %_91 = add nuw nsw i32 %_84, %_0.sroa.4.0.i143.ph753
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_82)
  %_98 = and i32 %_91, 7
  %_97 = icmp eq i32 %_98, 0
  %21 = zext i1 %_97 to i32
  %spec.select = add i32 %spec.select67, %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_106)
  store ptr %n.0, ptr %_106, align 8
  %22 = getelementptr inbounds nuw i8, ptr %_106, i64 8
  store ptr %_217, ptr %22, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_310 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_106, i64 noundef %iter1) #22
  %.not54 = icmp eq i64 %_310, 0
  br i1 %.not54, label %bb145, label %bb150

bb140:                                            ; preds = %bb62.i, %bb133
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1bbaccfdb315ab810732e2cd9a91233f) #18
  unreachable

bb145:                                            ; preds = %bb141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %ptr.i.i168 = load ptr, ptr %_106, align 8, !alias.scope !1060, !nonnull !23, !noundef !23
  %end_or_len.i.i169 = load ptr, ptr %22, align 8, !alias.scope !1060, !nonnull !23, !noundef !23
  %_7.i.i170 = icmp eq ptr %ptr.i.i168, %end_or_len.i.i169
  br i1 %_7.i.i170, label %bb150, label %bb14.i171

bb14.i171:                                        ; preds = %bb145
  %x.i173 = load i8, ptr %ptr.i.i168, align 1, !noalias !1057, !noundef !23
  %_6.i174 = icmp sgt i8 %x.i173, -1
  br i1 %_6.i174, label %bb3.i207, label %bb4.i175

bb4.i175:                                         ; preds = %bb14.i171
  %_18.i.i172 = getelementptr inbounds nuw i8, ptr %ptr.i.i168, i64 1
  %_30.i176 = and i8 %x.i173, 31
  %init.i177 = zext nneg i8 %_30.i176 to i32
  %_7.i10.i178 = icmp ne ptr %_18.i.i172, %end_or_len.i.i169
  tail call void @llvm.assume(i1 %_7.i10.i178)
  %y.i180 = load i8, ptr %_18.i.i172, align 1, !noalias !1057, !noundef !23
  %_34.i181 = shl nuw nsw i32 %init.i177, 6
  %_36.i182 = and i8 %y.i180, 63
  %_35.i183 = zext nneg i8 %_36.i182 to i32
  %23 = or disjoint i32 %_34.i181, %_35.i183
  %_13.i184 = icmp samesign ugt i8 %x.i173, -33
  br i1 %_13.i184, label %bb6.i187, label %bb151

bb3.i207:                                         ; preds = %bb14.i171
  %_7.i208 = zext nneg i8 %x.i173 to i32
  br label %bb151

bb6.i187:                                         ; preds = %bb4.i175
  %_18.i12.i179 = getelementptr inbounds nuw i8, ptr %ptr.i.i168, i64 2
  %_7.i17.i188 = icmp ne ptr %_18.i12.i179, %end_or_len.i.i169
  tail call void @llvm.assume(i1 %_7.i17.i188)
  %z.i190 = load i8, ptr %_18.i12.i179, align 1, !noalias !1057, !noundef !23
  %_40.i191 = shl nuw nsw i32 %_35.i183, 6
  %_42.i192 = and i8 %z.i190, 63
  %_41.i193 = zext nneg i8 %_42.i192 to i32
  %y_z.i194 = or disjoint i32 %_40.i191, %_41.i193
  %_20.i195 = shl nuw nsw i32 %init.i177, 12
  %24 = or disjoint i32 %y_z.i194, %_20.i195
  %_21.i196 = icmp samesign ugt i8 %x.i173, -17
  br i1 %_21.i196, label %bb143, label %bb151

bb143:                                            ; preds = %bb6.i187
  %_18.i19.i189 = getelementptr inbounds nuw i8, ptr %ptr.i.i168, i64 3
  %_7.i24.i198 = icmp ne ptr %_18.i19.i189, %end_or_len.i.i169
  tail call void @llvm.assume(i1 %_7.i24.i198)
  %w.i200 = load i8, ptr %_18.i19.i189, align 1, !noalias !1057, !noundef !23
  %_26.i201 = shl nuw nsw i32 %init.i177, 18
  %_25.i202 = and i32 %_26.i201, 1835008
  %_46.i203 = shl nuw nsw i32 %y_z.i194, 6
  %_48.i204 = and i8 %w.i200, 63
  %_47.i205 = zext nneg i8 %_48.i204 to i32
  %_27.i206 = or disjoint i32 %_46.i203, %_47.i205
  %25 = or disjoint i32 %_27.i206, %_25.i202
  %.not55 = icmp eq i32 %25, 1114112
  br i1 %.not55, label %bb150, label %bb151, !prof !1046

bb151:                                            ; preds = %bb3.i207, %bb6.i187, %bb4.i175, %bb143
  %_0.sroa.4.0.i185.ph761 = phi i32 [ %25, %bb143 ], [ %_7.i208, %bb3.i207 ], [ %24, %bb6.i187 ], [ %23, %bb4.i175 ]
  %26 = icmp samesign ult i32 %_0.sroa.4.0.i185.ph761, 1114112
  tail call void @llvm.assume(i1 %26)
  %27 = shl nuw nsw i32 %_0.sroa.4.0.i185.ph761, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_113)
  store ptr %n.0, ptr %_113, align 8
  %28 = getelementptr inbounds nuw i8, ptr %_113, i64 8
  store ptr %_217, ptr %28, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_326 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_113, i64 noundef %3) #22
  %.not56 = icmp eq i64 %_326, 0
  br i1 %.not56, label %bb155, label %bb160

bb150:                                            ; preds = %bb145, %bb141, %bb143
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_503f66f445a31a6214df48612252c5b7) #18
  unreachable

bb155:                                            ; preds = %bb151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %ptr.i.i210 = load ptr, ptr %_113, align 8, !alias.scope !1066, !nonnull !23, !noundef !23
  %end_or_len.i.i211 = load ptr, ptr %28, align 8, !alias.scope !1066, !nonnull !23, !noundef !23
  %_7.i.i212 = icmp eq ptr %ptr.i.i210, %end_or_len.i.i211
  br i1 %_7.i.i212, label %bb160, label %bb14.i213

bb14.i213:                                        ; preds = %bb155
  %x.i215 = load i8, ptr %ptr.i.i210, align 1, !noalias !1063, !noundef !23
  %_6.i216 = icmp sgt i8 %x.i215, -1
  br i1 %_6.i216, label %bb3.i249, label %bb4.i217

bb4.i217:                                         ; preds = %bb14.i213
  %_18.i.i214 = getelementptr inbounds nuw i8, ptr %ptr.i.i210, i64 1
  %_30.i218 = and i8 %x.i215, 31
  %init.i219 = zext nneg i8 %_30.i218 to i32
  %_7.i10.i220 = icmp ne ptr %_18.i.i214, %end_or_len.i.i211
  tail call void @llvm.assume(i1 %_7.i10.i220)
  %y.i222 = load i8, ptr %_18.i.i214, align 1, !noalias !1063, !noundef !23
  %_34.i223 = shl nuw nsw i32 %init.i219, 6
  %_36.i224 = and i8 %y.i222, 63
  %_35.i225 = zext nneg i8 %_36.i224 to i32
  %29 = or disjoint i32 %_34.i223, %_35.i225
  %_13.i226 = icmp samesign ugt i8 %x.i215, -33
  br i1 %_13.i226, label %bb6.i229, label %bb165

bb3.i249:                                         ; preds = %bb14.i213
  %_7.i250 = zext nneg i8 %x.i215 to i32
  br label %bb165

bb6.i229:                                         ; preds = %bb4.i217
  %_18.i12.i221 = getelementptr inbounds nuw i8, ptr %ptr.i.i210, i64 2
  %_7.i17.i230 = icmp ne ptr %_18.i12.i221, %end_or_len.i.i211
  tail call void @llvm.assume(i1 %_7.i17.i230)
  %z.i232 = load i8, ptr %_18.i12.i221, align 1, !noalias !1063, !noundef !23
  %_40.i233 = shl nuw nsw i32 %_35.i225, 6
  %_42.i234 = and i8 %z.i232, 63
  %_41.i235 = zext nneg i8 %_42.i234 to i32
  %y_z.i236 = or disjoint i32 %_40.i233, %_41.i235
  %_20.i237 = shl nuw nsw i32 %init.i219, 12
  %30 = or disjoint i32 %y_z.i236, %_20.i237
  %_21.i238 = icmp samesign ugt i8 %x.i215, -17
  br i1 %_21.i238, label %bb153, label %bb165

bb153:                                            ; preds = %bb6.i229
  %_18.i19.i231 = getelementptr inbounds nuw i8, ptr %ptr.i.i210, i64 3
  %_7.i24.i240 = icmp ne ptr %_18.i19.i231, %end_or_len.i.i211
  tail call void @llvm.assume(i1 %_7.i24.i240)
  %w.i242 = load i8, ptr %_18.i19.i231, align 1, !noalias !1063, !noundef !23
  %_26.i243 = shl nuw nsw i32 %init.i219, 18
  %_25.i244 = and i32 %_26.i243, 1835008
  %_46.i245 = shl nuw nsw i32 %y_z.i236, 6
  %_48.i246 = and i8 %w.i242, 63
  %_47.i247 = zext nneg i8 %_48.i246 to i32
  %_27.i248 = or disjoint i32 %_46.i245, %_47.i247
  %31 = or disjoint i32 %_27.i248, %_25.i244
  %.not57 = icmp eq i32 %31, 1114112
  br i1 %.not57, label %bb160, label %bb165, !prof !1046

bb160:                                            ; preds = %bb155, %bb151, %bb153
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_318f256ea602318612a34d4824b5db38) #18
  unreachable

bb165:                                            ; preds = %bb3.i249, %bb6.i229, %bb4.i217, %bb153
  %_0.sroa.4.0.i227.ph769 = phi i32 [ %31, %bb153 ], [ %_7.i250, %bb3.i249 ], [ %30, %bb6.i229 ], [ %29, %bb4.i217 ]
  %32 = icmp samesign ult i32 %_0.sroa.4.0.i227.ph769, 1114112
  tail call void @llvm.assume(i1 %32)
  %33 = shl nuw nsw i32 %_0.sroa.4.0.i227.ph769, 1
  %_107 = add nuw nsw i32 %33, %27
  br i1 %_6.i90, label %bb3.i306, label %bb4.i274

bb4.i274:                                         ; preds = %bb165
  %_18.i.i271 = getelementptr inbounds nuw i8, ptr %n.0, i64 1
  %_30.i275 = and i8 %x.i89, 31
  %init.i276 = zext nneg i8 %_30.i275 to i32
  %_7.i10.i277 = icmp samesign ne i64 %n.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i277)
  %y.i279 = load i8, ptr %_18.i.i271, align 1, !noalias !1069, !noundef !23
  %_34.i280 = shl nuw nsw i32 %init.i276, 6
  %_36.i281 = and i8 %y.i279, 63
  %_35.i282 = zext nneg i8 %_36.i281 to i32
  %34 = or disjoint i32 %_34.i280, %_35.i282
  %_13.i283 = icmp samesign ugt i8 %x.i89, -33
  br i1 %_13.i283, label %bb6.i286, label %bb171

bb3.i306:                                         ; preds = %bb165
  %_7.i307 = zext nneg i8 %x.i89 to i32
  br label %bb171

bb6.i286:                                         ; preds = %bb4.i274
  %_18.i12.i278 = getelementptr inbounds nuw i8, ptr %n.0, i64 2
  %_7.i17.i287 = icmp samesign ne i64 %n.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i287)
  %z.i289 = load i8, ptr %_18.i12.i278, align 1, !noalias !1069, !noundef !23
  %_40.i290 = shl nuw nsw i32 %_35.i282, 6
  %_42.i291 = and i8 %z.i289, 63
  %_41.i292 = zext nneg i8 %_42.i291 to i32
  %y_z.i293 = or disjoint i32 %_40.i290, %_41.i292
  %_20.i294 = shl nuw nsw i32 %init.i276, 12
  %35 = or disjoint i32 %y_z.i293, %_20.i294
  %_21.i295 = icmp samesign ugt i8 %x.i89, -17
  br i1 %_21.i295, label %bb163, label %bb171

bb163:                                            ; preds = %bb6.i286
  %_18.i19.i288 = getelementptr inbounds nuw i8, ptr %n.0, i64 3
  %_7.i24.i297 = icmp samesign ne i64 %n.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i297)
  %w.i299 = load i8, ptr %_18.i19.i288, align 1, !noalias !1069, !noundef !23
  %_26.i300 = shl nuw nsw i32 %init.i276, 18
  %_25.i301 = and i32 %_26.i300, 1835008
  %_46.i302 = shl nuw nsw i32 %y_z.i293, 6
  %_48.i303 = and i8 %w.i299, 63
  %_47.i304 = zext nneg i8 %_48.i303 to i32
  %_27.i305 = or disjoint i32 %_46.i302, %_47.i304
  %36 = or disjoint i32 %_27.i305, %_25.i301
  %.not59 = icmp eq i32 %36, 1114112
  br i1 %.not59, label %bb170, label %bb171, !prof !1050

bb171:                                            ; preds = %bb4.i274, %bb6.i286, %bb3.i306, %bb163
  %_0.sroa.4.0.i284824 = phi i32 [ %36, %bb163 ], [ %34, %bb4.i274 ], [ %35, %bb6.i286 ], [ %_7.i307, %bb3.i306 ]
  %37 = icmp samesign ult i32 %_0.sroa.4.0.i284824, 1114112
  tail call void @llvm.assume(i1 %37)
  %_114 = add nuw nsw i32 %_107, %_0.sroa.4.0.i284824
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_113)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_106)
  %_121 = and i32 %_114, 7
  %_120 = icmp eq i32 %_121, 0
  %38 = zext i1 %_120 to i32
  %spec.select66 = add i32 %spec.select, %38
  br label %bb28

bb170:                                            ; preds = %bb163
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3f22e5e78c67a355fc5aed216c4f1637) #18
  unreachable

bb28:                                             ; preds = %bb78, %bb171, %bb14.i653
  %count.sroa.0.2 = phi i32 [ %spec.select66, %bb171 ], [ %., %bb14.i653 ], [ %spec.select82, %bb78 ]
  ret i32 %count.sroa.0.2

bb85:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %ptr.i.i309 = load ptr, ptr %_57, align 8, !alias.scope !1075, !nonnull !23, !noundef !23
  %end_or_len.i.i310 = load ptr, ptr %0, align 8, !alias.scope !1075, !nonnull !23, !noundef !23
  %_7.i.i311 = icmp eq ptr %ptr.i.i309, %end_or_len.i.i310
  br i1 %_7.i.i311, label %bb90, label %bb14.i312

bb14.i312:                                        ; preds = %bb85
  %x.i314 = load i8, ptr %ptr.i.i309, align 1, !noalias !1072, !noundef !23
  %_6.i315 = icmp sgt i8 %x.i314, -1
  br i1 %_6.i315, label %bb3.i348, label %bb4.i316

bb4.i316:                                         ; preds = %bb14.i312
  %_18.i.i313 = getelementptr inbounds nuw i8, ptr %ptr.i.i309, i64 1
  %_30.i317 = and i8 %x.i314, 31
  %init.i318 = zext nneg i8 %_30.i317 to i32
  %_7.i10.i319 = icmp ne ptr %_18.i.i313, %end_or_len.i.i310
  tail call void @llvm.assume(i1 %_7.i10.i319)
  %y.i321 = load i8, ptr %_18.i.i313, align 1, !noalias !1072, !noundef !23
  %_34.i322 = shl nuw nsw i32 %init.i318, 6
  %_36.i323 = and i8 %y.i321, 63
  %_35.i324 = zext nneg i8 %_36.i323 to i32
  %39 = or disjoint i32 %_34.i322, %_35.i324
  %_13.i325 = icmp samesign ugt i8 %x.i314, -33
  br i1 %_13.i325, label %bb6.i328, label %bb91

bb3.i348:                                         ; preds = %bb14.i312
  %_7.i349 = zext nneg i8 %x.i314 to i32
  br label %bb91

bb6.i328:                                         ; preds = %bb4.i316
  %_18.i12.i320 = getelementptr inbounds nuw i8, ptr %ptr.i.i309, i64 2
  %_7.i17.i329 = icmp ne ptr %_18.i12.i320, %end_or_len.i.i310
  tail call void @llvm.assume(i1 %_7.i17.i329)
  %z.i331 = load i8, ptr %_18.i12.i320, align 1, !noalias !1072, !noundef !23
  %_40.i332 = shl nuw nsw i32 %_35.i324, 6
  %_42.i333 = and i8 %z.i331, 63
  %_41.i334 = zext nneg i8 %_42.i333 to i32
  %y_z.i335 = or disjoint i32 %_40.i332, %_41.i334
  %_20.i336 = shl nuw nsw i32 %init.i318, 12
  %40 = or disjoint i32 %y_z.i335, %_20.i336
  %_21.i337 = icmp samesign ugt i8 %x.i314, -17
  br i1 %_21.i337, label %bb83, label %bb91

bb83:                                             ; preds = %bb6.i328
  %_18.i19.i330 = getelementptr inbounds nuw i8, ptr %ptr.i.i309, i64 3
  %_7.i24.i339 = icmp ne ptr %_18.i19.i330, %end_or_len.i.i310
  tail call void @llvm.assume(i1 %_7.i24.i339)
  %w.i341 = load i8, ptr %_18.i19.i330, align 1, !noalias !1072, !noundef !23
  %_26.i342 = shl nuw nsw i32 %init.i318, 18
  %_25.i343 = and i32 %_26.i342, 1835008
  %_46.i344 = shl nuw nsw i32 %y_z.i335, 6
  %_48.i345 = and i8 %w.i341, 63
  %_47.i346 = zext nneg i8 %_48.i345 to i32
  %_27.i347 = or disjoint i32 %_46.i344, %_47.i346
  %41 = or disjoint i32 %_27.i347, %_25.i343
  %.not61 = icmp eq i32 %41, 1114112
  br i1 %.not61, label %bb90, label %bb91, !prof !1046

bb91:                                             ; preds = %bb3.i348, %bb6.i328, %bb4.i316, %bb83
  %_0.sroa.4.0.i326.ph777 = phi i32 [ %41, %bb83 ], [ %_7.i349, %bb3.i348 ], [ %40, %bb6.i328 ], [ %39, %bb4.i316 ]
  %42 = icmp samesign ult i32 %_0.sroa.4.0.i326.ph777, 1114112
  tail call void @llvm.assume(i1 %42)
  %43 = shl nuw nsw i32 %_0.sroa.4.0.i326.ph777, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_64)
  store ptr %n.0, ptr %_64, align 8
  store ptr %_210, ptr %1, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_237 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_64, i64 noundef %4) #22
  %.not62 = icmp eq i64 %_237, 0
  br i1 %.not62, label %bb95, label %bb100

bb90:                                             ; preds = %bb85, %bb15, %bb83
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_07ca4f0b52fc90b237596b549884eeaf) #18
  unreachable

bb95:                                             ; preds = %bb91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %ptr.i.i351 = load ptr, ptr %_64, align 8, !alias.scope !1081, !nonnull !23, !noundef !23
  %end_or_len.i.i352 = load ptr, ptr %1, align 8, !alias.scope !1081, !nonnull !23, !noundef !23
  %_7.i.i353 = icmp eq ptr %ptr.i.i351, %end_or_len.i.i352
  br i1 %_7.i.i353, label %bb100, label %bb14.i354

bb14.i354:                                        ; preds = %bb95
  %x.i356 = load i8, ptr %ptr.i.i351, align 1, !noalias !1078, !noundef !23
  %_6.i357 = icmp sgt i8 %x.i356, -1
  br i1 %_6.i357, label %bb3.i390, label %bb4.i358

bb4.i358:                                         ; preds = %bb14.i354
  %_18.i.i355 = getelementptr inbounds nuw i8, ptr %ptr.i.i351, i64 1
  %_30.i359 = and i8 %x.i356, 31
  %init.i360 = zext nneg i8 %_30.i359 to i32
  %_7.i10.i361 = icmp ne ptr %_18.i.i355, %end_or_len.i.i352
  tail call void @llvm.assume(i1 %_7.i10.i361)
  %y.i363 = load i8, ptr %_18.i.i355, align 1, !noalias !1078, !noundef !23
  %_34.i364 = shl nuw nsw i32 %init.i360, 6
  %_36.i365 = and i8 %y.i363, 63
  %_35.i366 = zext nneg i8 %_36.i365 to i32
  %44 = or disjoint i32 %_34.i364, %_35.i366
  %_13.i367 = icmp samesign ugt i8 %x.i356, -33
  br i1 %_13.i367, label %bb6.i370, label %bb101

bb3.i390:                                         ; preds = %bb14.i354
  %_7.i391 = zext nneg i8 %x.i356 to i32
  br label %bb101

bb6.i370:                                         ; preds = %bb4.i358
  %_18.i12.i362 = getelementptr inbounds nuw i8, ptr %ptr.i.i351, i64 2
  %_7.i17.i371 = icmp ne ptr %_18.i12.i362, %end_or_len.i.i352
  tail call void @llvm.assume(i1 %_7.i17.i371)
  %z.i373 = load i8, ptr %_18.i12.i362, align 1, !noalias !1078, !noundef !23
  %_40.i374 = shl nuw nsw i32 %_35.i366, 6
  %_42.i375 = and i8 %z.i373, 63
  %_41.i376 = zext nneg i8 %_42.i375 to i32
  %y_z.i377 = or disjoint i32 %_40.i374, %_41.i376
  %_20.i378 = shl nuw nsw i32 %init.i360, 12
  %45 = or disjoint i32 %y_z.i377, %_20.i378
  %_21.i379 = icmp samesign ugt i8 %x.i356, -17
  br i1 %_21.i379, label %bb93, label %bb101

bb93:                                             ; preds = %bb6.i370
  %_18.i19.i372 = getelementptr inbounds nuw i8, ptr %ptr.i.i351, i64 3
  %_7.i24.i381 = icmp ne ptr %_18.i19.i372, %end_or_len.i.i352
  tail call void @llvm.assume(i1 %_7.i24.i381)
  %w.i383 = load i8, ptr %_18.i19.i372, align 1, !noalias !1078, !noundef !23
  %_26.i384 = shl nuw nsw i32 %init.i360, 18
  %_25.i385 = and i32 %_26.i384, 1835008
  %_46.i386 = shl nuw nsw i32 %y_z.i377, 6
  %_48.i387 = and i8 %w.i383, 63
  %_47.i388 = zext nneg i8 %_48.i387 to i32
  %_27.i389 = or disjoint i32 %_46.i386, %_47.i388
  %46 = or disjoint i32 %_27.i389, %_25.i385
  %.not63 = icmp eq i32 %46, 1114112
  br i1 %.not63, label %bb100, label %bb101, !prof !1046

bb101:                                            ; preds = %bb3.i390, %bb6.i370, %bb4.i358, %bb93
  %_0.sroa.4.0.i368.ph785 = phi i32 [ %46, %bb93 ], [ %_7.i391, %bb3.i390 ], [ %45, %bb6.i370 ], [ %44, %bb4.i358 ]
  %47 = icmp samesign ult i32 %_0.sroa.4.0.i368.ph785, 1114112
  tail call void @llvm.assume(i1 %47)
  %48 = shl nuw nsw i32 %_0.sroa.4.0.i368.ph785, 1
  %_58 = add nuw nsw i32 %48, %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_71)
  store ptr %n.0, ptr %_71, align 8
  store ptr %_210, ptr %2, align 8
  %_72 = add i64 %iter.sroa.0.0817, 2
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_253 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_71, i64 noundef %_72) #22
  %.not64 = icmp eq i64 %_253, 0
  br i1 %.not64, label %bb105, label %bb110

bb100:                                            ; preds = %bb95, %bb91, %bb93
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7717f7dc00ceaf31fc155c664372667c) #18
  unreachable

bb105:                                            ; preds = %bb101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %ptr.i.i393 = load ptr, ptr %_71, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %end_or_len.i.i394 = load ptr, ptr %2, align 8, !alias.scope !1087, !nonnull !23, !noundef !23
  %_7.i.i395 = icmp eq ptr %ptr.i.i393, %end_or_len.i.i394
  br i1 %_7.i.i395, label %bb110, label %bb14.i396

bb14.i396:                                        ; preds = %bb105
  %x.i398 = load i8, ptr %ptr.i.i393, align 1, !noalias !1084, !noundef !23
  %_6.i399 = icmp sgt i8 %x.i398, -1
  br i1 %_6.i399, label %bb3.i432, label %bb4.i400

bb4.i400:                                         ; preds = %bb14.i396
  %_18.i.i397 = getelementptr inbounds nuw i8, ptr %ptr.i.i393, i64 1
  %_30.i401 = and i8 %x.i398, 31
  %init.i402 = zext nneg i8 %_30.i401 to i32
  %_7.i10.i403 = icmp ne ptr %_18.i.i397, %end_or_len.i.i394
  tail call void @llvm.assume(i1 %_7.i10.i403)
  %y.i405 = load i8, ptr %_18.i.i397, align 1, !noalias !1084, !noundef !23
  %_34.i406 = shl nuw nsw i32 %init.i402, 6
  %_36.i407 = and i8 %y.i405, 63
  %_35.i408 = zext nneg i8 %_36.i407 to i32
  %49 = or disjoint i32 %_34.i406, %_35.i408
  %_13.i409 = icmp samesign ugt i8 %x.i398, -33
  br i1 %_13.i409, label %bb6.i412, label %bb111

bb3.i432:                                         ; preds = %bb14.i396
  %_7.i433 = zext nneg i8 %x.i398 to i32
  br label %bb111

bb6.i412:                                         ; preds = %bb4.i400
  %_18.i12.i404 = getelementptr inbounds nuw i8, ptr %ptr.i.i393, i64 2
  %_7.i17.i413 = icmp ne ptr %_18.i12.i404, %end_or_len.i.i394
  tail call void @llvm.assume(i1 %_7.i17.i413)
  %z.i415 = load i8, ptr %_18.i12.i404, align 1, !noalias !1084, !noundef !23
  %_40.i416 = shl nuw nsw i32 %_35.i408, 6
  %_42.i417 = and i8 %z.i415, 63
  %_41.i418 = zext nneg i8 %_42.i417 to i32
  %y_z.i419 = or disjoint i32 %_40.i416, %_41.i418
  %_20.i420 = shl nuw nsw i32 %init.i402, 12
  %50 = or disjoint i32 %y_z.i419, %_20.i420
  %_21.i421 = icmp samesign ugt i8 %x.i398, -17
  br i1 %_21.i421, label %bb103, label %bb111

bb103:                                            ; preds = %bb6.i412
  %_18.i19.i414 = getelementptr inbounds nuw i8, ptr %ptr.i.i393, i64 3
  %_7.i24.i423 = icmp ne ptr %_18.i19.i414, %end_or_len.i.i394
  tail call void @llvm.assume(i1 %_7.i24.i423)
  %w.i425 = load i8, ptr %_18.i19.i414, align 1, !noalias !1084, !noundef !23
  %_26.i426 = shl nuw nsw i32 %init.i402, 18
  %_25.i427 = and i32 %_26.i426, 1835008
  %_46.i428 = shl nuw nsw i32 %y_z.i419, 6
  %_48.i429 = and i8 %w.i425, 63
  %_47.i430 = zext nneg i8 %_48.i429 to i32
  %_27.i431 = or disjoint i32 %_46.i428, %_47.i430
  %51 = or disjoint i32 %_27.i431, %_25.i427
  %.not65 = icmp eq i32 %51, 1114112
  br i1 %.not65, label %bb110, label %bb111, !prof !1046

bb111:                                            ; preds = %bb3.i432, %bb6.i412, %bb4.i400, %bb103
  %_0.sroa.4.0.i410.ph793 = phi i32 [ %51, %bb103 ], [ %_7.i433, %bb3.i432 ], [ %50, %bb6.i412 ], [ %49, %bb4.i400 ]
  %52 = icmp samesign ult i32 %_0.sroa.4.0.i410.ph793, 1114112
  tail call void @llvm.assume(i1 %52)
  %_66 = add nuw nsw i32 %_58, %_0.sroa.4.0.i410.ph793
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_71)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_64)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  %_74 = and i32 %_66, 7
  %_73 = icmp eq i32 %_74, 0
  %53 = zext i1 %_73 to i32
  %spec.select67 = add i32 %count.sroa.0.0818, %53
  %54 = add i64 %4, 1
  %exitcond.not = icmp eq i64 %54, %3
  br i1 %exitcond.not, label %bb16, label %bb15

bb110:                                            ; preds = %bb105, %bb101, %bb103
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_66b380e28b21d35f2e453f5bd91ffdbf) #18
  unreachable

bb14.i438:                                        ; preds = %start
  %x.i440 = load i8, ptr %n.0, align 1, !noalias !1090, !noundef !23
  %_6.i441 = icmp sgt i8 %x.i440, -1
  br i1 %_6.i441, label %bb62.i483, label %bb4.i442

bb4.i442:                                         ; preds = %bb14.i438
  %_18.i.i439 = getelementptr inbounds nuw i8, ptr %n.0, i64 1
  %y.i447 = load i8, ptr %_18.i.i439, align 1, !noalias !1090, !noundef !23
  %_13.i451 = icmp samesign ult i8 %x.i440, -32
  tail call void @llvm.assume(i1 %_13.i451)
  br label %bb62.i483

bb62.i483:                                        ; preds = %bb4.i442, %bb14.i438
  %_0.sroa.4.0.i452.in = phi i8 [ %y.i447, %bb4.i442 ], [ %x.i440, %bb14.i438 ]
  %_0.sroa.4.0.i452 = zext i8 %_0.sroa.4.0.i452.in to i32
  %55 = shl nuw nsw i32 %_0.sroa.4.0.i452, 1
  %_130.i485 = zext i8 %x.i440 to i64
  %56 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i485
  %_128.i486 = load i8, ptr %56, align 1, !noalias !1093, !noundef !23
  %slurp.i487 = zext nneg i8 %_128.i486 to i64
  %.not28.i489 = icmp ult i8 %_128.i486, 3
  tail call void @llvm.assume(i1 %.not28.i489)
  %_19.i38.i488.ptr.ptr.ptr.le = getelementptr inbounds nuw i8, ptr %n.0, i64 %slurp.i487
  %_7.i.i495 = icmp eq i8 %_128.i486, 2
  br i1 %_7.i.i495, label %bb57, label %bb14.i496

bb14.i496:                                        ; preds = %bb62.i483
  %x.i498 = load i8, ptr %_19.i38.i488.ptr.ptr.ptr.le, align 1, !noalias !1096, !noundef !23
  %_6.i499 = icmp sgt i8 %x.i498, -1
  br i1 %_6.i499, label %bb3.i590, label %bb4.i500

bb4.i500:                                         ; preds = %bb14.i496
  %_19.i38.i488.ptr.add = add nuw nsw i64 %slurp.i487, 1
  %_18.i.i497.ptr = getelementptr inbounds nuw i8, ptr %n.0, i64 %_19.i38.i488.ptr.add
  %_30.i501 = and i8 %x.i498, 31
  %init.i502 = zext nneg i8 %_30.i501 to i32
  %_7.i10.i503 = icmp ne i64 %_19.i38.i488.ptr.add, 2
  tail call void @llvm.assume(i1 %_7.i10.i503)
  %y.i505 = load i8, ptr %_18.i.i497.ptr, align 1, !noalias !1096, !noundef !23
  %_34.i506 = shl nuw nsw i32 %init.i502, 6
  %_36.i507 = and i8 %y.i505, 63
  %_35.i508 = zext nneg i8 %_36.i507 to i32
  %57 = or disjoint i32 %_34.i506, %_35.i508
  %_13.i509 = icmp samesign ugt i8 %x.i498, -33
  br i1 %_13.i509, label %bb6.i512, label %bb4.i558

bb6.i512:                                         ; preds = %bb4.i500
  %_18.i12.i504 = getelementptr inbounds nuw i8, ptr %_19.i38.i488.ptr.ptr.ptr.le, i64 2
  %_7.i17.i513 = icmp ne i8 %_128.i486, 0
  tail call void @llvm.assume(i1 %_7.i17.i513)
  %z.i515 = load i8, ptr %_18.i12.i504, align 1, !noalias !1096, !noundef !23
  %_40.i516 = shl nuw nsw i32 %_35.i508, 6
  %_42.i517 = and i8 %z.i515, 63
  %_41.i518 = zext nneg i8 %_42.i517 to i32
  %y_z.i519 = or disjoint i32 %_40.i516, %_41.i518
  %_20.i520 = shl nuw nsw i32 %init.i502, 12
  %58 = or disjoint i32 %y_z.i519, %_20.i520
  %_21.i521 = icmp samesign ugt i8 %x.i498, -17
  br i1 %_21.i521, label %bb50, label %bb4.i558

bb50:                                             ; preds = %bb6.i512
  %_18.i19.i514.ptr = getelementptr inbounds nuw i8, ptr %_19.i38.i488.ptr.ptr.ptr.le, i64 3
  %w.i525 = load i8, ptr %_18.i19.i514.ptr, align 1, !noalias !1096, !noundef !23
  %_26.i526 = shl nuw nsw i32 %init.i502, 18
  %_25.i527 = and i32 %_26.i526, 1835008
  %_46.i528 = shl nuw nsw i32 %y_z.i519, 6
  %_48.i529 = and i8 %w.i525, 63
  %_47.i530 = zext nneg i8 %_48.i529 to i32
  %_27.i531 = or disjoint i32 %_46.i528, %_47.i530
  %59 = or disjoint i32 %_27.i531, %_25.i527
  %.not41 = icmp eq i32 %59, 1114112
  br i1 %.not41, label %bb57, label %bb4.i558, !prof !1050

bb57:                                             ; preds = %bb62.i483, %bb50
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_97bb1e267690345fb2d658ba3dc56f81) #18
  unreachable

bb4.i558:                                         ; preds = %bb6.i512, %bb4.i500, %bb50
  %_0.sroa.4.0.i510.ph801.ph = phi i32 [ %57, %bb4.i500 ], [ %58, %bb6.i512 ], [ %59, %bb50 ]
  %60 = icmp samesign ult i32 %_0.sroa.4.0.i510.ph801.ph, 1114112
  tail call void @llvm.assume(i1 %60)
  %_21826 = add nuw nsw i32 %_0.sroa.4.0.i510.ph801.ph, %55
  %_19.i38.i546.ptr.add = add nuw nsw i64 %slurp.i487, 1
  %_18.i.i555.ptr = getelementptr inbounds nuw i8, ptr %n.0, i64 %_19.i38.i546.ptr.add
  %_30.i559 = and i8 %x.i498, 31
  %init.i560 = zext nneg i8 %_30.i559 to i32
  %_7.i10.i561 = icmp ne i64 %_19.i38.i546.ptr.add, 2
  tail call void @llvm.assume(i1 %_7.i10.i561)
  %y.i563 = load i8, ptr %_18.i.i555.ptr, align 1, !noalias !1099, !noundef !23
  %_34.i564 = shl nuw nsw i32 %init.i560, 6
  %_36.i565 = and i8 %y.i563, 63
  %_35.i566 = zext nneg i8 %_36.i565 to i32
  %61 = or disjoint i32 %_34.i564, %_35.i566
  %_13.i567 = icmp samesign ugt i8 %x.i498, -33
  br i1 %_13.i567, label %bb6.i570, label %bb14.i611

bb3.i590:                                         ; preds = %bb14.i496
  %_7.i533 = zext nneg i8 %x.i498 to i32
  %_21 = add nuw nsw i32 %55, %_7.i533
  %_7.i591 = zext nneg i8 %x.i498 to i32
  br label %bb14.i611

bb6.i570:                                         ; preds = %bb4.i558
  %_18.i12.i562 = getelementptr inbounds nuw i8, ptr %_19.i38.i488.ptr.ptr.ptr.le, i64 2
  %_7.i17.i571 = icmp ne i8 %_128.i486, 0
  tail call void @llvm.assume(i1 %_7.i17.i571)
  %z.i573 = load i8, ptr %_18.i12.i562, align 1, !noalias !1099, !noundef !23
  %_40.i574 = shl nuw nsw i32 %_35.i566, 6
  %_42.i575 = and i8 %z.i573, 63
  %_41.i576 = zext nneg i8 %_42.i575 to i32
  %y_z.i577 = or disjoint i32 %_40.i574, %_41.i576
  %_20.i578 = shl nuw nsw i32 %init.i560, 12
  %62 = or disjoint i32 %y_z.i577, %_20.i578
  %_21.i579 = icmp samesign ugt i8 %x.i498, -17
  br i1 %_21.i579, label %bb60, label %bb14.i611

bb60:                                             ; preds = %bb6.i570
  %_18.i19.i572.ptr = getelementptr inbounds nuw i8, ptr %_19.i38.i488.ptr.ptr.ptr.le, i64 3
  %w.i583 = load i8, ptr %_18.i19.i572.ptr, align 1, !noalias !1099, !noundef !23
  %_26.i584 = shl nuw nsw i32 %init.i560, 18
  %_25.i585 = and i32 %_26.i584, 1835008
  %_46.i586 = shl nuw nsw i32 %y_z.i577, 6
  %_48.i587 = and i8 %w.i583, 63
  %_47.i588 = zext nneg i8 %_48.i587 to i32
  %_27.i589 = or disjoint i32 %_46.i586, %_47.i588
  %63 = or disjoint i32 %_27.i589, %_25.i585
  %.not43 = icmp eq i32 %63, 1114112
  br i1 %.not43, label %bb67, label %bb14.i611, !prof !1050

bb67:                                             ; preds = %bb60
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5122b0ec80278e339004b2fa58103191) #18
  unreachable

bb14.i611:                                        ; preds = %bb3.i590, %bb6.i570, %bb4.i558, %bb60
  %_21827 = phi i32 [ %_21826, %bb60 ], [ %_21, %bb3.i590 ], [ %_21826, %bb6.i570 ], [ %_21826, %bb4.i558 ]
  %_0.sroa.4.0.i568.ph809 = phi i32 [ %63, %bb60 ], [ %_7.i591, %bb3.i590 ], [ %62, %bb6.i570 ], [ %61, %bb4.i558 ]
  %64 = icmp samesign ult i32 %_0.sroa.4.0.i568.ph809, 1114112
  tail call void @llvm.assume(i1 %64)
  %65 = shl nuw nsw i32 %_0.sroa.4.0.i568.ph809, 1
  br i1 %_6.i441, label %bb78, label %bb4.i615

bb4.i615:                                         ; preds = %bb14.i611
  %_18.i.i612 = getelementptr inbounds nuw i8, ptr %n.0, i64 1
  %y.i620 = load i8, ptr %_18.i.i612, align 1, !noalias !1102, !noundef !23
  br label %bb78

bb78:                                             ; preds = %bb14.i611, %bb4.i615
  %_0.sroa.4.0.i625.in = phi i8 [ %y.i620, %bb4.i615 ], [ %x.i440, %bb14.i611 ]
  %_0.sroa.4.0.i625 = zext i8 %_0.sroa.4.0.i625.in to i32
  %_35 = add nuw nsw i32 %65, %_0.sroa.4.0.i625
  %_42 = and i32 %_21827, 7
  %_41 = icmp eq i32 %_42, 0
  %spec.select68 = zext i1 %_41 to i32
  %_44 = and i32 %_35, 7
  %_43 = icmp eq i32 %_44, 0
  %66 = select i1 %_41, i32 2, i32 1
  %spec.select82 = select i1 %_43, i32 %66, i32 %spec.select68
  br label %bb28

bb14.i653:                                        ; preds = %start
  %x.i655 = load i8, ptr %n.0, align 1, !noalias !1105, !noundef !23
  %_6.i656 = icmp sgt i8 %x.i655, -1
  tail call void @llvm.assume(i1 %_6.i656)
  %67 = and i8 %x.i655, 7
  %_10 = icmp eq i8 %67, 0
  %. = zext i1 %_10 to i32
  br label %bb28
}
