define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb46:
  %_57 = alloca [16 x i8], align 8
  %_51 = alloca [16 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_78 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %_7.i.i = icmp samesign eq i64 %str.1, 0
  br i1 %_7.i.i, label %bb51, label %bb14.i

bb14.i:                                           ; preds = %bb46
  %x.i = load i8, ptr %str.0, align 1, !noalias !1040, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb52.thread512, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %str.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1040, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb52

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %str.0, i64 2
  %_7.i17.i = icmp samesign ne i64 %str.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1040, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb44, label %bb52

bb44:                                             ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %str.0, i64 3
  %_7.i24.i = icmp samesign ne i64 %str.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1040, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  %.not54 = icmp eq i32 %2, 1114112
  br i1 %.not54, label %bb51, label %bb52.thread, !prof !1043

bb52:                                             ; preds = %bb4.i, %bb6.i
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ]
  %_3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 65
  br i1 %_3, label %bb41, label %bb4.i86

bb52.thread512:                                   ; preds = %bb14.i
  %_3514 = icmp ult i8 %x.i, 65
  br i1 %_3514, label %bb41, label %bb3.i118

bb52.thread:                                      ; preds = %bb44
  %_3508 = icmp samesign ult i32 %2, 65
  br i1 %_3508, label %bb41, label %bb4.i86

bb51:                                             ; preds = %bb46, %bb44
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb641e0e6f5032de832d395ace315118) #18
  unreachable

bb4.i86:                                          ; preds = %bb52, %bb52.thread
  %_18.i.i83 = getelementptr inbounds nuw i8, ptr %str.0, i64 1
  %_30.i87 = and i8 %x.i, 31
  %init.i88 = zext nneg i8 %_30.i87 to i32
  %y.i91 = load i8, ptr %_18.i.i83, align 1, !noalias !1044, !noundef !23
  %_34.i92 = shl nuw nsw i32 %init.i88, 6
  %_36.i93 = and i8 %y.i91, 63
  %_35.i94 = zext nneg i8 %_36.i93 to i32
  %3 = or disjoint i32 %_34.i92, %_35.i94
  %_13.i95 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i95, label %bb6.i98, label %bb62

bb3.i118:                                         ; preds = %bb52.thread512
  %_7.i119 = zext nneg i8 %x.i to i32
  br label %bb62

bb6.i98:                                          ; preds = %bb4.i86
  %_18.i12.i90 = getelementptr inbounds nuw i8, ptr %str.0, i64 2
  %_7.i17.i99 = icmp samesign ne i64 %str.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i99)
  %z.i101 = load i8, ptr %_18.i12.i90, align 1, !noalias !1044, !noundef !23
  %_40.i102 = shl nuw nsw i32 %_35.i94, 6
  %_42.i103 = and i8 %z.i101, 63
  %_41.i104 = zext nneg i8 %_42.i103 to i32
  %y_z.i105 = or disjoint i32 %_40.i102, %_41.i104
  %_20.i106 = shl nuw nsw i32 %init.i88, 12
  %4 = or disjoint i32 %y_z.i105, %_20.i106
  %_21.i107 = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i107, label %bb54, label %bb62

bb54:                                             ; preds = %bb6.i98
  %_18.i19.i100 = getelementptr inbounds nuw i8, ptr %str.0, i64 3
  %_7.i24.i109 = icmp samesign ne i64 %str.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i109)
  %w.i111 = load i8, ptr %_18.i19.i100, align 1, !noalias !1044, !noundef !23
  %_26.i112 = shl nuw nsw i32 %init.i88, 18
  %_25.i113 = and i32 %_26.i112, 1835008
  %_46.i114 = shl nuw nsw i32 %y_z.i105, 6
  %_48.i115 = and i8 %w.i111, 63
  %_47.i116 = zext nneg i8 %_48.i115 to i32
  %_27.i117 = or disjoint i32 %_46.i114, %_47.i116
  %5 = or disjoint i32 %_27.i117, %_25.i113
  %.not56 = icmp eq i32 %5, 1114112
  br i1 %.not56, label %bb61, label %bb62, !prof !1043

bb62:                                             ; preds = %bb4.i86, %bb6.i98, %bb3.i118, %bb54
  %_0.sroa.4.0.i96511 = phi i32 [ %5, %bb54 ], [ %3, %bb4.i86 ], [ %4, %bb6.i98 ], [ %_7.i119, %bb3.i118 ]
  %_8 = icmp samesign ugt i32 %_0.sroa.4.0.i96511, 90
  br i1 %_8, label %bb41, label %bb5

bb61:                                             ; preds = %bb54
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3524435204fdda3dfb8f46cc42a289b7) #18
  unreachable

bb5:                                              ; preds = %bb62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  %6 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  store ptr %_78, ptr %6, align 8
  %_18 = add i64 %str.1, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_114 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %_18) #22
  %.not57 = icmp eq i64 %_114, 0
  br i1 %.not57, label %bb66, label %bb71

bb66:                                             ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %ptr.i.i121 = load ptr, ptr %_17, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %end_or_len.i.i122 = load ptr, ptr %6, align 8, !alias.scope !1050, !nonnull !23, !noundef !23
  %_7.i.i123 = icmp eq ptr %ptr.i.i121, %end_or_len.i.i122
  br i1 %_7.i.i123, label %bb71, label %bb14.i124

bb14.i124:                                        ; preds = %bb66
  %x.i126 = load i8, ptr %ptr.i.i121, align 1, !noalias !1047, !noundef !23
  %_6.i127 = icmp sgt i8 %x.i126, -1
  br i1 %_6.i127, label %bb3.i160, label %bb4.i128

bb4.i128:                                         ; preds = %bb14.i124
  %_18.i.i125 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 1
  %_30.i129 = and i8 %x.i126, 31
  %init.i130 = zext nneg i8 %_30.i129 to i32
  %_7.i10.i131 = icmp ne ptr %_18.i.i125, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i10.i131)
  %y.i133 = load i8, ptr %_18.i.i125, align 1, !noalias !1047, !noundef !23
  %_34.i134 = shl nuw nsw i32 %init.i130, 6
  %_36.i135 = and i8 %y.i133, 63
  %_35.i136 = zext nneg i8 %_36.i135 to i32
  %7 = or disjoint i32 %_34.i134, %_35.i136
  %_13.i137 = icmp samesign ugt i8 %x.i126, -33
  br i1 %_13.i137, label %bb6.i140, label %bb64

bb3.i160:                                         ; preds = %bb14.i124
  %_7.i161 = zext nneg i8 %x.i126 to i32
  br label %bb64

bb6.i140:                                         ; preds = %bb4.i128
  %_18.i12.i132 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 2
  %_7.i17.i141 = icmp ne ptr %_18.i12.i132, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i17.i141)
  %z.i143 = load i8, ptr %_18.i12.i132, align 1, !noalias !1047, !noundef !23
  %_40.i144 = shl nuw nsw i32 %_35.i136, 6
  %_42.i145 = and i8 %z.i143, 63
  %_41.i146 = zext nneg i8 %_42.i145 to i32
  %y_z.i147 = or disjoint i32 %_40.i144, %_41.i146
  %_20.i148 = shl nuw nsw i32 %init.i130, 12
  %8 = or disjoint i32 %y_z.i147, %_20.i148
  %_21.i149 = icmp samesign ugt i8 %x.i126, -17
  br i1 %_21.i149, label %bb8.i150, label %bb64

bb8.i150:                                         ; preds = %bb6.i140
  %_18.i19.i142 = getelementptr inbounds nuw i8, ptr %ptr.i.i121, i64 3
  %_7.i24.i151 = icmp ne ptr %_18.i19.i142, %end_or_len.i.i122
  tail call void @llvm.assume(i1 %_7.i24.i151)
  %w.i153 = load i8, ptr %_18.i19.i142, align 1, !noalias !1047, !noundef !23
  %_26.i154 = shl nuw nsw i32 %init.i130, 18
  %_25.i155 = and i32 %_26.i154, 1835008
  %_46.i156 = shl nuw nsw i32 %y_z.i147, 6
  %_48.i157 = and i8 %w.i153, 63
  %_47.i158 = zext nneg i8 %_48.i157 to i32
  %_27.i159 = or disjoint i32 %_46.i156, %_47.i158
  %9 = or disjoint i32 %_27.i159, %_25.i155
  br label %bb64

bb64:                                             ; preds = %bb3.i160, %bb8.i150, %bb6.i140, %bb4.i128
  %_0.sroa.4.0.i138.ph = phi i32 [ %7, %bb4.i128 ], [ %8, %bb6.i140 ], [ %9, %bb8.i150 ], [ %_7.i161, %bb3.i160 ]
  switch i32 %_0.sroa.4.0.i138.ph, label %bb6 [
    i32 1114112, label %bb71
    i32 46, label %bb7
  ], !prof !1053

bb71:                                             ; preds = %bb66, %bb5, %bb64
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bc5a926cd0ddf41ff20213c75a10c600) #18
  unreachable

bb7:                                              ; preds = %bb64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %_21493.not = icmp eq i64 %str.1, 1
  br i1 %_21493.not, label %bb41, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %bb7
  %10 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  br label %bb9

bb6:                                              ; preds = %bb64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br label %bb41

bb9:                                              ; preds = %bb9.lr.ph, %bb38
  %curr_state.sroa.0.0495 = phi i32 [ 0, %bb9.lr.ph ], [ %curr_state.sroa.0.5444, %bb38 ]
  %index.sroa.0.0494 = phi i64 [ 1, %bb9.lr.ph ], [ %35, %bb38 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_27)
  store ptr %str.0, ptr %_27, align 8
  store ptr %_78, ptr %10, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_130 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_27, i64 noundef %index.sroa.0.0494) #22
  %.not59 = icmp eq i64 %_130, 0
  br i1 %.not59, label %bb76, label %bb81

bb41:                                             ; preds = %bb38, %bb11, %bb11, %bb136, %bb23, %bb52.thread512, %bb52.thread, %bb7, %bb62, %bb52, %bb36, %bb6
  %_0.sroa.0.0 = phi i32 [ 0, %bb6 ], [ %36, %bb36 ], [ 0, %bb52 ], [ 0, %bb62 ], [ 0, %bb7 ], [ 0, %bb52.thread ], [ 0, %bb52.thread512 ], [ 0, %bb23 ], [ 0, %bb136 ], [ 0, %bb11 ], [ 0, %bb11 ], [ 0, %bb38 ]
  ret i32 %_0.sroa.0.0

bb76:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %ptr.i.i163 = load ptr, ptr %_27, align 8, !alias.scope !1057, !nonnull !23, !noundef !23
  %end_or_len.i.i164 = load ptr, ptr %10, align 8, !alias.scope !1057, !nonnull !23, !noundef !23
  %_7.i.i165 = icmp eq ptr %ptr.i.i163, %end_or_len.i.i164
  br i1 %_7.i.i165, label %bb81, label %bb14.i166

bb14.i166:                                        ; preds = %bb76
  %x.i168 = load i8, ptr %ptr.i.i163, align 1, !noalias !1054, !noundef !23
  %_6.i169 = icmp sgt i8 %x.i168, -1
  br i1 %_6.i169, label %bb3.i202, label %bb4.i170

bb4.i170:                                         ; preds = %bb14.i166
  %_18.i.i167 = getelementptr inbounds nuw i8, ptr %ptr.i.i163, i64 1
  %_30.i171 = and i8 %x.i168, 31
  %init.i172 = zext nneg i8 %_30.i171 to i32
  %_7.i10.i173 = icmp ne ptr %_18.i.i167, %end_or_len.i.i164
  tail call void @llvm.assume(i1 %_7.i10.i173)
  %y.i175 = load i8, ptr %_18.i.i167, align 1, !noalias !1054, !noundef !23
  %_34.i176 = shl nuw nsw i32 %init.i172, 6
  %_36.i177 = and i8 %y.i175, 63
  %_35.i178 = zext nneg i8 %_36.i177 to i32
  %16 = or disjoint i32 %_34.i176, %_35.i178
  %_13.i179 = icmp samesign ugt i8 %x.i168, -33
  br i1 %_13.i179, label %bb6.i182, label %bb82

bb3.i202:                                         ; preds = %bb14.i166
  %_7.i203 = zext nneg i8 %x.i168 to i32
  br label %bb82

bb6.i182:                                         ; preds = %bb4.i170
  %_18.i12.i174 = getelementptr inbounds nuw i8, ptr %ptr.i.i163, i64 2
  %_7.i17.i183 = icmp ne ptr %_18.i12.i174, %end_or_len.i.i164
  tail call void @llvm.assume(i1 %_7.i17.i183)
  %z.i185 = load i8, ptr %_18.i12.i174, align 1, !noalias !1054, !noundef !23
  %_40.i186 = shl nuw nsw i32 %_35.i178, 6
  %_42.i187 = and i8 %z.i185, 63
  %_41.i188 = zext nneg i8 %_42.i187 to i32
  %y_z.i189 = or disjoint i32 %_40.i186, %_41.i188
  %_20.i190 = shl nuw nsw i32 %init.i172, 12
  %17 = or disjoint i32 %y_z.i189, %_20.i190
  %_21.i191 = icmp samesign ugt i8 %x.i168, -17
  br i1 %_21.i191, label %bb74, label %bb82

bb74:                                             ; preds = %bb6.i182
  %_18.i19.i184 = getelementptr inbounds nuw i8, ptr %ptr.i.i163, i64 3
  %_7.i24.i193 = icmp ne ptr %_18.i19.i184, %end_or_len.i.i164
  tail call void @llvm.assume(i1 %_7.i24.i193)
  %w.i195 = load i8, ptr %_18.i19.i184, align 1, !noalias !1054, !noundef !23
  %_26.i196 = shl nuw nsw i32 %init.i172, 18
  %_25.i197 = and i32 %_26.i196, 1835008
  %_46.i198 = shl nuw nsw i32 %y_z.i189, 6
  %_48.i199 = and i8 %w.i195, 63
  %_47.i200 = zext nneg i8 %_48.i199 to i32
  %_27.i201 = or disjoint i32 %_46.i198, %_47.i200
  %18 = or disjoint i32 %_27.i201, %_25.i197
  %.not60 = icmp eq i32 %18, 1114112
  br i1 %.not60, label %bb81, label %bb82, !prof !1060

bb82:                                             ; preds = %bb3.i202, %bb6.i182, %bb4.i170, %bb74
  %_0.sroa.4.0.i180.ph455 = phi i32 [ %18, %bb74 ], [ %_7.i203, %bb3.i202 ], [ %17, %bb6.i182 ], [ %16, %bb4.i170 ]
  %_23 = icmp samesign ugt i32 %_0.sroa.4.0.i180.ph455, 64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_27)
  br i1 %_23, label %bb10, label %bb14

bb81:                                             ; preds = %bb76, %bb9, %bb74
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0e8bb74db4fce2563fd66a9d95921d62) #18
  unreachable

bb10:                                             ; preds = %bb82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %str.0, ptr %_33, align 8
  store ptr %_78, ptr %11, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_146 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %index.sroa.0.0494) #22
  %.not61 = icmp eq i64 %_146, 0
  br i1 %.not61, label %bb86, label %bb91

bb14:                                             ; preds = %bb92, %bb82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %str.0, ptr %_39, align 8
  store ptr %_78, ptr %12, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_162 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %index.sroa.0.0494) #22
  %.not63 = icmp eq i64 %_162, 0
  br i1 %.not63, label %bb96, label %bb101

bb86:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %ptr.i.i205 = load ptr, ptr %_33, align 8, !alias.scope !1064, !nonnull !23, !noundef !23
  %end_or_len.i.i206 = load ptr, ptr %11, align 8, !alias.scope !1064, !nonnull !23, !noundef !23
  %_7.i.i207 = icmp eq ptr %ptr.i.i205, %end_or_len.i.i206
  br i1 %_7.i.i207, label %bb91, label %bb14.i208

bb14.i208:                                        ; preds = %bb86
  %x.i210 = load i8, ptr %ptr.i.i205, align 1, !noalias !1061, !noundef !23
  %_6.i211 = icmp sgt i8 %x.i210, -1
  br i1 %_6.i211, label %bb3.i244, label %bb4.i212

bb4.i212:                                         ; preds = %bb14.i208
  %_18.i.i209 = getelementptr inbounds nuw i8, ptr %ptr.i.i205, i64 1
  %_30.i213 = and i8 %x.i210, 31
  %init.i214 = zext nneg i8 %_30.i213 to i32
  %_7.i10.i215 = icmp ne ptr %_18.i.i209, %end_or_len.i.i206
  tail call void @llvm.assume(i1 %_7.i10.i215)
  %y.i217 = load i8, ptr %_18.i.i209, align 1, !noalias !1061, !noundef !23
  %_34.i218 = shl nuw nsw i32 %init.i214, 6
  %_36.i219 = and i8 %y.i217, 63
  %_35.i220 = zext nneg i8 %_36.i219 to i32
  %19 = or disjoint i32 %_34.i218, %_35.i220
  %_13.i221 = icmp samesign ugt i8 %x.i210, -33
  br i1 %_13.i221, label %bb6.i224, label %bb92

bb3.i244:                                         ; preds = %bb14.i208
  %_7.i245 = zext nneg i8 %x.i210 to i32
  br label %bb92

bb6.i224:                                         ; preds = %bb4.i212
  %_18.i12.i216 = getelementptr inbounds nuw i8, ptr %ptr.i.i205, i64 2
  %_7.i17.i225 = icmp ne ptr %_18.i12.i216, %end_or_len.i.i206
  tail call void @llvm.assume(i1 %_7.i17.i225)
  %z.i227 = load i8, ptr %_18.i12.i216, align 1, !noalias !1061, !noundef !23
  %_40.i228 = shl nuw nsw i32 %_35.i220, 6
  %_42.i229 = and i8 %z.i227, 63
  %_41.i230 = zext nneg i8 %_42.i229 to i32
  %y_z.i231 = or disjoint i32 %_40.i228, %_41.i230
  %_20.i232 = shl nuw nsw i32 %init.i214, 12
  %20 = or disjoint i32 %y_z.i231, %_20.i232
  %_21.i233 = icmp samesign ugt i8 %x.i210, -17
  br i1 %_21.i233, label %bb84, label %bb92

bb84:                                             ; preds = %bb6.i224
  %_18.i19.i226 = getelementptr inbounds nuw i8, ptr %ptr.i.i205, i64 3
  %_7.i24.i235 = icmp ne ptr %_18.i19.i226, %end_or_len.i.i206
  tail call void @llvm.assume(i1 %_7.i24.i235)
  %w.i237 = load i8, ptr %_18.i19.i226, align 1, !noalias !1061, !noundef !23
  %_26.i238 = shl nuw nsw i32 %init.i214, 18
  %_25.i239 = and i32 %_26.i238, 1835008
  %_46.i240 = shl nuw nsw i32 %y_z.i231, 6
  %_48.i241 = and i8 %w.i237, 63
  %_47.i242 = zext nneg i8 %_48.i241 to i32
  %_27.i243 = or disjoint i32 %_46.i240, %_47.i242
  %21 = or disjoint i32 %_27.i243, %_25.i239
  %.not62 = icmp eq i32 %21, 1114112
  br i1 %.not62, label %bb91, label %bb92, !prof !1060

bb92:                                             ; preds = %bb3.i244, %bb6.i224, %bb4.i212, %bb84
  %_0.sroa.4.0.i222.ph463 = phi i32 [ %21, %bb84 ], [ %_7.i245, %bb3.i244 ], [ %20, %bb6.i224 ], [ %19, %bb4.i212 ]
  %_29 = icmp samesign ult i32 %_0.sroa.4.0.i222.ph463, 91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br i1 %_29, label %bb11, label %bb14

bb91:                                             ; preds = %bb86, %bb10, %bb84
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cc1da2ea4000fc8ddbd27d055a127060) #18
  unreachable

bb11:                                             ; preds = %bb92
  switch i32 %curr_state.sroa.0.0495, label %bb38 [
    i32 0, label %bb41
    i32 2, label %bb41
  ]

bb96:                                             ; preds = %bb14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %ptr.i.i247 = load ptr, ptr %_39, align 8, !alias.scope !1070, !nonnull !23, !noundef !23
  %end_or_len.i.i248 = load ptr, ptr %12, align 8, !alias.scope !1070, !nonnull !23, !noundef !23
  %_7.i.i249 = icmp eq ptr %ptr.i.i247, %end_or_len.i.i248
  br i1 %_7.i.i249, label %bb101, label %bb14.i250

bb14.i250:                                        ; preds = %bb96
  %x.i252 = load i8, ptr %ptr.i.i247, align 1, !noalias !1067, !noundef !23
  %_6.i253 = icmp sgt i8 %x.i252, -1
  br i1 %_6.i253, label %bb3.i286, label %bb4.i254

bb4.i254:                                         ; preds = %bb14.i250
  %_18.i.i251 = getelementptr inbounds nuw i8, ptr %ptr.i.i247, i64 1
  %_30.i255 = and i8 %x.i252, 31
  %init.i256 = zext nneg i8 %_30.i255 to i32
  %_7.i10.i257 = icmp ne ptr %_18.i.i251, %end_or_len.i.i248
  tail call void @llvm.assume(i1 %_7.i10.i257)
  %y.i259 = load i8, ptr %_18.i.i251, align 1, !noalias !1067, !noundef !23
  %_34.i260 = shl nuw nsw i32 %init.i256, 6
  %_36.i261 = and i8 %y.i259, 63
  %_35.i262 = zext nneg i8 %_36.i261 to i32
  %22 = or disjoint i32 %_34.i260, %_35.i262
  %_13.i263 = icmp samesign ugt i8 %x.i252, -33
  br i1 %_13.i263, label %bb6.i266, label %bb94

bb3.i286:                                         ; preds = %bb14.i250
  %_7.i287 = zext nneg i8 %x.i252 to i32
  br label %bb94

bb6.i266:                                         ; preds = %bb4.i254
  %_18.i12.i258 = getelementptr inbounds nuw i8, ptr %ptr.i.i247, i64 2
  %_7.i17.i267 = icmp ne ptr %_18.i12.i258, %end_or_len.i.i248
  tail call void @llvm.assume(i1 %_7.i17.i267)
  %z.i269 = load i8, ptr %_18.i12.i258, align 1, !noalias !1067, !noundef !23
  %_40.i270 = shl nuw nsw i32 %_35.i262, 6
  %_42.i271 = and i8 %z.i269, 63
  %_41.i272 = zext nneg i8 %_42.i271 to i32
  %y_z.i273 = or disjoint i32 %_40.i270, %_41.i272
  %_20.i274 = shl nuw nsw i32 %init.i256, 12
  %23 = or disjoint i32 %y_z.i273, %_20.i274
  %_21.i275 = icmp samesign ugt i8 %x.i252, -17
  br i1 %_21.i275, label %bb8.i276, label %bb94

bb8.i276:                                         ; preds = %bb6.i266
  %_18.i19.i268 = getelementptr inbounds nuw i8, ptr %ptr.i.i247, i64 3
  %_7.i24.i277 = icmp ne ptr %_18.i19.i268, %end_or_len.i.i248
  tail call void @llvm.assume(i1 %_7.i24.i277)
  %w.i279 = load i8, ptr %_18.i19.i268, align 1, !noalias !1067, !noundef !23
  %_26.i280 = shl nuw nsw i32 %init.i256, 18
  %_25.i281 = and i32 %_26.i280, 1835008
  %_46.i282 = shl nuw nsw i32 %y_z.i273, 6
  %_48.i283 = and i8 %w.i279, 63
  %_47.i284 = zext nneg i8 %_48.i283 to i32
  %_27.i285 = or disjoint i32 %_46.i282, %_47.i284
  %24 = or disjoint i32 %_27.i285, %_25.i281
  br label %bb94

bb94:                                             ; preds = %bb3.i286, %bb8.i276, %bb6.i266, %bb4.i254
  %_0.sroa.4.0.i264.ph = phi i32 [ %22, %bb4.i254 ], [ %23, %bb6.i266 ], [ %24, %bb8.i276 ], [ %_7.i287, %bb3.i286 ]
  switch i32 %_0.sroa.4.0.i264.ph, label %bb16 [
    i32 1114112, label %bb101
    i32 32, label %bb15
  ], !prof !1053

bb101:                                            ; preds = %bb96, %bb14, %bb94
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8657e589edc6037bbf6d5becce9fa461) #18
  unreachable

bb16:                                             ; preds = %bb94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45)
  store ptr %str.0, ptr %_45, align 8
  store ptr %_78, ptr %13, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_178 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_45, i64 noundef %index.sroa.0.0494) #22
  %.not65 = icmp eq i64 %_178, 0
  br i1 %.not65, label %bb106, label %bb111

bb15:                                             ; preds = %bb94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  br label %bb136

bb106:                                            ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %ptr.i.i289 = load ptr, ptr %_45, align 8, !alias.scope !1076, !nonnull !23, !noundef !23
  %end_or_len.i.i290 = load ptr, ptr %13, align 8, !alias.scope !1076, !nonnull !23, !noundef !23
  %_7.i.i291 = icmp eq ptr %ptr.i.i289, %end_or_len.i.i290
  br i1 %_7.i.i291, label %bb111, label %bb14.i292

bb14.i292:                                        ; preds = %bb106
  %x.i294 = load i8, ptr %ptr.i.i289, align 1, !noalias !1073, !noundef !23
  %_6.i295 = icmp sgt i8 %x.i294, -1
  br i1 %_6.i295, label %bb3.i328, label %bb4.i296

bb4.i296:                                         ; preds = %bb14.i292
  %_18.i.i293 = getelementptr inbounds nuw i8, ptr %ptr.i.i289, i64 1
  %_30.i297 = and i8 %x.i294, 31
  %init.i298 = zext nneg i8 %_30.i297 to i32
  %_7.i10.i299 = icmp ne ptr %_18.i.i293, %end_or_len.i.i290
  tail call void @llvm.assume(i1 %_7.i10.i299)
  %y.i301 = load i8, ptr %_18.i.i293, align 1, !noalias !1073, !noundef !23
  %_34.i302 = shl nuw nsw i32 %init.i298, 6
  %_36.i303 = and i8 %y.i301, 63
  %_35.i304 = zext nneg i8 %_36.i303 to i32
  %25 = or disjoint i32 %_34.i302, %_35.i304
  %_13.i305 = icmp samesign ugt i8 %x.i294, -33
  br i1 %_13.i305, label %bb6.i308, label %bb112

bb3.i328:                                         ; preds = %bb14.i292
  %_7.i329 = zext nneg i8 %x.i294 to i32
  br label %bb112

bb6.i308:                                         ; preds = %bb4.i296
  %_18.i12.i300 = getelementptr inbounds nuw i8, ptr %ptr.i.i289, i64 2
  %_7.i17.i309 = icmp ne ptr %_18.i12.i300, %end_or_len.i.i290
  tail call void @llvm.assume(i1 %_7.i17.i309)
  %z.i311 = load i8, ptr %_18.i12.i300, align 1, !noalias !1073, !noundef !23
  %_40.i312 = shl nuw nsw i32 %_35.i304, 6
  %_42.i313 = and i8 %z.i311, 63
  %_41.i314 = zext nneg i8 %_42.i313 to i32
  %y_z.i315 = or disjoint i32 %_40.i312, %_41.i314
  %_20.i316 = shl nuw nsw i32 %init.i298, 12
  %26 = or disjoint i32 %y_z.i315, %_20.i316
  %_21.i317 = icmp samesign ugt i8 %x.i294, -17
  br i1 %_21.i317, label %bb104, label %bb112

bb104:                                            ; preds = %bb6.i308
  %_18.i19.i310 = getelementptr inbounds nuw i8, ptr %ptr.i.i289, i64 3
  %_7.i24.i319 = icmp ne ptr %_18.i19.i310, %end_or_len.i.i290
  tail call void @llvm.assume(i1 %_7.i24.i319)
  %w.i321 = load i8, ptr %_18.i19.i310, align 1, !noalias !1073, !noundef !23
  %_26.i322 = shl nuw nsw i32 %init.i298, 18
  %_25.i323 = and i32 %_26.i322, 1835008
  %_46.i324 = shl nuw nsw i32 %y_z.i315, 6
  %_48.i325 = and i8 %w.i321, 63
  %_47.i326 = zext nneg i8 %_48.i325 to i32
  %_27.i327 = or disjoint i32 %_46.i324, %_47.i326
  %27 = or disjoint i32 %_27.i327, %_25.i323
  %.not66 = icmp eq i32 %27, 1114112
  br i1 %.not66, label %bb111, label %bb112, !prof !1060

bb112:                                            ; preds = %bb3.i328, %bb6.i308, %bb4.i296, %bb104
  %_0.sroa.4.0.i306.ph474 = phi i32 [ %27, %bb104 ], [ %_7.i329, %bb3.i328 ], [ %26, %bb6.i308 ], [ %25, %bb4.i296 ]
  %_41 = icmp samesign ugt i32 %_0.sroa.4.0.i306.ph474, 96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  br i1 %_41, label %bb17, label %bb21

bb111:                                            ; preds = %bb106, %bb16, %bb104
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_906ea8b3eba84eb3928fe673fa5c4ee4) #18
  unreachable

bb17:                                             ; preds = %bb112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_51)
  store ptr %str.0, ptr %_51, align 8
  store ptr %_78, ptr %14, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_194 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_51, i64 noundef %index.sroa.0.0494) #22
  %.not67 = icmp eq i64 %_194, 0
  br i1 %.not67, label %bb116, label %bb121

bb21:                                             ; preds = %bb122, %bb112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_57)
  store ptr %str.0, ptr %_57, align 8
  store ptr %_78, ptr %15, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_210 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_57, i64 noundef %index.sroa.0.0494) #22
  %.not69 = icmp eq i64 %_210, 0
  br i1 %.not69, label %bb126, label %bb131

bb116:                                            ; preds = %bb17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %ptr.i.i331 = load ptr, ptr %_51, align 8, !alias.scope !1082, !nonnull !23, !noundef !23
  %end_or_len.i.i332 = load ptr, ptr %14, align 8, !alias.scope !1082, !nonnull !23, !noundef !23
  %_7.i.i333 = icmp eq ptr %ptr.i.i331, %end_or_len.i.i332
  br i1 %_7.i.i333, label %bb121, label %bb14.i334

bb14.i334:                                        ; preds = %bb116
  %x.i336 = load i8, ptr %ptr.i.i331, align 1, !noalias !1079, !noundef !23
  %_6.i337 = icmp sgt i8 %x.i336, -1
  br i1 %_6.i337, label %bb3.i370, label %bb4.i338

bb4.i338:                                         ; preds = %bb14.i334
  %_18.i.i335 = getelementptr inbounds nuw i8, ptr %ptr.i.i331, i64 1
  %_30.i339 = and i8 %x.i336, 31
  %init.i340 = zext nneg i8 %_30.i339 to i32
  %_7.i10.i341 = icmp ne ptr %_18.i.i335, %end_or_len.i.i332
  tail call void @llvm.assume(i1 %_7.i10.i341)
  %y.i343 = load i8, ptr %_18.i.i335, align 1, !noalias !1079, !noundef !23
  %_34.i344 = shl nuw nsw i32 %init.i340, 6
  %_36.i345 = and i8 %y.i343, 63
  %_35.i346 = zext nneg i8 %_36.i345 to i32
  %28 = or disjoint i32 %_34.i344, %_35.i346
  %_13.i347 = icmp samesign ugt i8 %x.i336, -33
  br i1 %_13.i347, label %bb6.i350, label %bb122

bb3.i370:                                         ; preds = %bb14.i334
  %_7.i371 = zext nneg i8 %x.i336 to i32
  br label %bb122

bb6.i350:                                         ; preds = %bb4.i338
  %_18.i12.i342 = getelementptr inbounds nuw i8, ptr %ptr.i.i331, i64 2
  %_7.i17.i351 = icmp ne ptr %_18.i12.i342, %end_or_len.i.i332
  tail call void @llvm.assume(i1 %_7.i17.i351)
  %z.i353 = load i8, ptr %_18.i12.i342, align 1, !noalias !1079, !noundef !23
  %_40.i354 = shl nuw nsw i32 %_35.i346, 6
  %_42.i355 = and i8 %z.i353, 63
  %_41.i356 = zext nneg i8 %_42.i355 to i32
  %y_z.i357 = or disjoint i32 %_40.i354, %_41.i356
  %_20.i358 = shl nuw nsw i32 %init.i340, 12
  %29 = or disjoint i32 %y_z.i357, %_20.i358
  %_21.i359 = icmp samesign ugt i8 %x.i336, -17
  br i1 %_21.i359, label %bb114, label %bb122

bb114:                                            ; preds = %bb6.i350
  %_18.i19.i352 = getelementptr inbounds nuw i8, ptr %ptr.i.i331, i64 3
  %_7.i24.i361 = icmp ne ptr %_18.i19.i352, %end_or_len.i.i332
  tail call void @llvm.assume(i1 %_7.i24.i361)
  %w.i363 = load i8, ptr %_18.i19.i352, align 1, !noalias !1079, !noundef !23
  %_26.i364 = shl nuw nsw i32 %init.i340, 18
  %_25.i365 = and i32 %_26.i364, 1835008
  %_46.i366 = shl nuw nsw i32 %y_z.i357, 6
  %_48.i367 = and i8 %w.i363, 63
  %_47.i368 = zext nneg i8 %_48.i367 to i32
  %_27.i369 = or disjoint i32 %_46.i366, %_47.i368
  %30 = or disjoint i32 %_27.i369, %_25.i365
  %.not68 = icmp eq i32 %30, 1114112
  br i1 %.not68, label %bb121, label %bb122, !prof !1060

bb122:                                            ; preds = %bb3.i370, %bb6.i350, %bb4.i338, %bb114
  %_0.sroa.4.0.i348.ph482 = phi i32 [ %30, %bb114 ], [ %_7.i371, %bb3.i370 ], [ %29, %bb6.i350 ], [ %28, %bb4.i338 ]
  %_47 = icmp samesign ult i32 %_0.sroa.4.0.i348.ph482, 123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  br i1 %_47, label %bb38, label %bb21

bb121:                                            ; preds = %bb116, %bb17, %bb114
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_29ca9265c64a591a504c55f40d9c34c3) #18
  unreachable

bb126:                                            ; preds = %bb21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %ptr.i.i373 = load ptr, ptr %_57, align 8, !alias.scope !1088, !nonnull !23, !noundef !23
  %end_or_len.i.i374 = load ptr, ptr %15, align 8, !alias.scope !1088, !nonnull !23, !noundef !23
  %_7.i.i375 = icmp eq ptr %ptr.i.i373, %end_or_len.i.i374
  br i1 %_7.i.i375, label %bb131, label %bb14.i376

bb14.i376:                                        ; preds = %bb126
  %x.i378 = load i8, ptr %ptr.i.i373, align 1, !noalias !1085, !noundef !23
  %_6.i379 = icmp sgt i8 %x.i378, -1
  br i1 %_6.i379, label %bb3.i412, label %bb4.i380

bb4.i380:                                         ; preds = %bb14.i376
  %_18.i.i377 = getelementptr inbounds nuw i8, ptr %ptr.i.i373, i64 1
  %_30.i381 = and i8 %x.i378, 31
  %init.i382 = zext nneg i8 %_30.i381 to i32
  %_7.i10.i383 = icmp ne ptr %_18.i.i377, %end_or_len.i.i374
  tail call void @llvm.assume(i1 %_7.i10.i383)
  %y.i385 = load i8, ptr %_18.i.i377, align 1, !noalias !1085, !noundef !23
  %_34.i386 = shl nuw nsw i32 %init.i382, 6
  %_36.i387 = and i8 %y.i385, 63
  %_35.i388 = zext nneg i8 %_36.i387 to i32
  %31 = or disjoint i32 %_34.i386, %_35.i388
  %_13.i389 = icmp samesign ugt i8 %x.i378, -33
  br i1 %_13.i389, label %bb6.i392, label %bb124

bb3.i412:                                         ; preds = %bb14.i376
  %_7.i413 = zext nneg i8 %x.i378 to i32
  br label %bb124

bb6.i392:                                         ; preds = %bb4.i380
  %_18.i12.i384 = getelementptr inbounds nuw i8, ptr %ptr.i.i373, i64 2
  %_7.i17.i393 = icmp ne ptr %_18.i12.i384, %end_or_len.i.i374
  tail call void @llvm.assume(i1 %_7.i17.i393)
  %z.i395 = load i8, ptr %_18.i12.i384, align 1, !noalias !1085, !noundef !23
  %_40.i396 = shl nuw nsw i32 %_35.i388, 6
  %_42.i397 = and i8 %z.i395, 63
  %_41.i398 = zext nneg i8 %_42.i397 to i32
  %y_z.i399 = or disjoint i32 %_40.i396, %_41.i398
  %_20.i400 = shl nuw nsw i32 %init.i382, 12
  %32 = or disjoint i32 %y_z.i399, %_20.i400
  %_21.i401 = icmp samesign ugt i8 %x.i378, -17
  br i1 %_21.i401, label %bb8.i402, label %bb124

bb8.i402:                                         ; preds = %bb6.i392
  %_18.i19.i394 = getelementptr inbounds nuw i8, ptr %ptr.i.i373, i64 3
  %_7.i24.i403 = icmp ne ptr %_18.i19.i394, %end_or_len.i.i374
  tail call void @llvm.assume(i1 %_7.i24.i403)
  %w.i405 = load i8, ptr %_18.i19.i394, align 1, !noalias !1085, !noundef !23
  %_26.i406 = shl nuw nsw i32 %init.i382, 18
  %_25.i407 = and i32 %_26.i406, 1835008
  %_46.i408 = shl nuw nsw i32 %y_z.i399, 6
  %_48.i409 = and i8 %w.i405, 63
  %_47.i410 = zext nneg i8 %_48.i409 to i32
  %_27.i411 = or disjoint i32 %_46.i408, %_47.i410
  %33 = or disjoint i32 %_27.i411, %_25.i407
  br label %bb124

bb124:                                            ; preds = %bb3.i412, %bb8.i402, %bb6.i392, %bb4.i380
  %_0.sroa.4.0.i390.ph = phi i32 [ %31, %bb4.i380 ], [ %32, %bb6.i392 ], [ %33, %bb8.i402 ], [ %_7.i413, %bb3.i412 ]
  switch i32 %_0.sroa.4.0.i390.ph, label %bb23 [
    i32 1114112, label %bb131
    i32 46, label %bb22
  ], !prof !1053

bb131:                                            ; preds = %bb126, %bb21, %bb124
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_79dd5ebd6dd86bca00ca3d84911dab46) #18
  unreachable

bb23:                                             ; preds = %bb124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  %_62.not = icmp eq i32 %curr_state.sroa.0.0495, 2
  br i1 %_62.not, label %bb38, label %bb41

bb22:                                             ; preds = %bb124
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_57)
  br label %bb136

bb136:                                            ; preds = %bb15, %bb22
  %_68 = phi i1 [ false, %bb15 ], [ true, %bb22 ]
  %curr_state.sroa.0.2 = phi i32 [ 1, %bb15 ], [ 3, %bb22 ]
  %34 = icmp eq i32 %curr_state.sroa.0.0495, %curr_state.sroa.0.2
  br i1 %34, label %bb41, label %bb33

bb33:                                             ; preds = %bb136
  %_70 = icmp ne i32 %curr_state.sroa.0.0495, 1
  %or.cond = and i1 %_70, %_68
  br i1 %or.cond, label %bb36, label %bb38

bb38:                                             ; preds = %bb122, %bb11, %bb23, %bb33
  %curr_state.sroa.0.5444 = phi i32 [ %curr_state.sroa.0.2, %bb33 ], [ 0, %bb11 ], [ 2, %bb23 ], [ 2, %bb122 ]
  %35 = add nuw i64 %index.sroa.0.0494, 1
  %exitcond.not = icmp eq i64 %35, %str.1
  br i1 %exitcond.not, label %bb41, label %bb9

bb36:                                             ; preds = %bb33
  %_72 = add nuw i64 %index.sroa.0.0494, 1
  %_71 = icmp eq i64 %_72, %str.1
  %36 = zext i1 %_71 to i32
  br label %bb41
}
