define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %a, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %b) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_68 = icmp ult i64 %n, 2305843009213693952
  tail call void @llvm.assume(i1 %_68)
  %1 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %m = load i64, ptr %1, align 8, !noundef !6
  %_69 = icmp ult i64 %m, 2305843009213693952
  tail call void @llvm.assume(i1 %_69)
  %_5 = icmp eq i64 %m, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_8 = add nuw nsw i64 %n, 1
  %_26.i.i.i = icmp eq i64 %n, 2305843009213693951
  br i1 %_26.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %bb2
  %2 = shl nuw nsw i64 %_8, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i, label %bb33

bb14.i:                                           ; preds = %bb3.i3.i, %bb2
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb2 ]
  %_16.sroa.10.0.ph.i = phi i64 [ %2, %bb3.i3.i ], [ undef, %bb2 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_16.sroa.10.0.ph.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb1:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %self1.i.i.i.i1.i = load i64, ptr %b, align 8, !range !22, !alias.scope !1088, !noalias !1091, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb27, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb1
  %5 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %6 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %self3.i.i.i.i4.i = load ptr, ptr %6, align 8, !alias.scope !1088, !noalias !1091, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1093
  br label %bb27

bb30:                                             ; preds = %cleanup2, %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %.pn = phi { ptr, i32 } [ %31, %cleanup2 ], [ %9, %cleanup ], [ %17, %cleanup1.body.i ], [ %18, %bb2.i.i.i3.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %self1.i.i.i.i1.i38 = load i64, ptr %b, align 8, !range !22, !alias.scope !1106, !noalias !1109, !noundef !6
  %_6.i.i.i.i2.i39 = icmp eq i64 %self1.i.i.i.i1.i38, 0
  br i1 %_6.i.i.i.i2.i39, label %bb31, label %bb2.i.i.i3.i40

bb2.i.i.i3.i40:                                   ; preds = %bb30
  %7 = shl nuw i64 %self1.i.i.i.i1.i38, 2
  %8 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %self3.i.i.i.i4.i41 = load ptr, ptr %8, align 8, !alias.scope !1106, !noalias !1109, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i41, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1111
  br label %bb31

cleanup:                                          ; preds = %bb14.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb30

bb33:                                             ; preds = %bb3.i3.i
  %_9 = add nuw nsw i64 %m, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1112
  %_21.0.i.i.i.i = mul i64 %_9, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %m, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb33
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1116
; call __rustc::__rust_alloc
  %10 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb33
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb33 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1112

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_9, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %10, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %m, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1112
  %12 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %12, align 8, !noalias !1112
  %13 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  br label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i43
  %ptr.sroa.0.019.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i43 ]
  %iter.sroa.0.018.i.i = phi i64 [ 1, %bb1.i.i ], [ %_28.i.i, %bb3.i3.i43 ]
  %storemerge17.i.i = phi i64 [ 0, %bb1.i.i ], [ %16, %bb3.i3.i43 ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1122
; call __rustc::__rust_alloc
  %14 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 4, 9) 4) #19, !noalias !1122
  %15 = icmp eq ptr %14, null
  br i1 %15, label %bb3.i.i.i.i.i, label %bb3.i3.i43

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %2) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1132

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i43:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %14, ptr noundef nonnull readonly align 4 dereferenceable(1) %3, i64 %2, i1 false), !noalias !1133
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.018.i.i, 1
  store i64 %_8, ptr %ptr.sroa.0.019.i.i, align 8, !noalias !1132
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 8
  store ptr %14, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1132
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 16
  store i64 %_8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1132
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 24
  %16 = add nuw nsw i64 %storemerge17.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.018.i.i, %m
  br i1 %exitcond.not.i.i, label %bb34, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %17 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge17.i.i, ptr %13, align 8, !alias.scope !1119, !noalias !1134
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1139
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1112
  br label %bb30

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %18 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1148
  br label %bb30

bb34:                                             ; preds = %bb3.i3.i43
  store i64 %_8, ptr %_15.i.i, align 8, !noalias !1157
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 32
  store ptr %3, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1157
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 40
  store i64 %_8, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1157
  store i64 %_9, ptr %13, align 8, !alias.scope !1119, !noalias !1158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1163
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1112
  %19 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_166 = load ptr, ptr %19, align 8, !nonnull !6
  %20 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_161 = load ptr, ptr %20, align 8, !nonnull !6
  %21 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_202 = load i64, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_203 = load ptr, ptr %22, align 8, !nonnull !6
  %_141.not = icmp eq i64 %_202, 0
  %23 = getelementptr inbounds nuw i8, ptr %_203, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %_203, i64 16
  br label %bb7.preheader

bb3.loopexit:                                     ; preds = %bb24, %bb7.preheader
  %_70 = icmp samesign ult i64 %iter.sroa.0.1131, %m
  %25 = zext i1 %_70 to i64
  %iter.sroa.0.1 = add nuw nsw i64 %iter.sroa.0.1131, %25
  br i1 %_70, label %bb7.preheader, label %bb6

bb7.preheader:                                    ; preds = %bb34, %bb3.loopexit
  %iter.sroa.0.1131 = phi i64 [ 1, %bb34 ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %iter.sroa.0.0130 = phi i64 [ 0, %bb34 ], [ %iter.sroa.0.1131, %bb3.loopexit ]
  %_79128 = icmp samesign ult i64 %iter.sroa.0.0130, %n
  br i1 %_79128, label %bb8.lr.ph, label %bb3.loopexit

bb8.lr.ph:                                        ; preds = %bb7.preheader
  %_16 = icmp eq i64 %iter.sroa.0.0130, 0
  %_47 = getelementptr inbounds nuw i32, ptr %_166, i64 %iter.sroa.0.0130
  %_205 = icmp ult i64 %iter.sroa.0.0130, %_202
  %_60 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_203, i64 %iter.sroa.0.0130
  %26 = getelementptr inbounds nuw i8, ptr %_60, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %_60, i64 16
  %_55 = add nsw i64 %iter.sroa.0.0130, -1
  %_183 = icmp ult i64 %_55, %_202
  %_54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_203, i64 %_55
  %28 = getelementptr inbounds nuw i8, ptr %_54, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %_54, i64 8
  br label %bb8

bb6:                                              ; preds = %bb3.loopexit
  %_66 = add nsw i64 %m, -1
  %_78 = icmp ult i64 %_66, %_202
  br i1 %_78, label %bb38, label %panic30.invoke

bb38:                                             ; preds = %bb6
  %_65 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_203, i64 %_66
  %_67 = add nsw i64 %n, -1
  %30 = getelementptr inbounds nuw i8, ptr %_65, i64 16
  %_224 = load i64, ptr %30, align 8, !noundef !6
  %_227 = icmp ult i64 %_67, %_224
  br i1 %_227, label %bb68, label %panic30.invoke

cleanup2:                                         ; preds = %panic30.invoke
  %31 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %bb30

bb68:                                             ; preds = %bb38
  %32 = getelementptr inbounds nuw i8, ptr %_65, i64 8
  %_225 = load ptr, ptr %32, align 8, !nonnull !6, !noundef !6
  %_64 = getelementptr inbounds nuw i32, ptr %_225, i64 %_67
  %33 = load i32, ptr %_64, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb68, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %34, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i" ], [ 0, %bb68 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_203, i64 %_3.sroa.0.012.i.i.i
  %34 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1182, !noalias !1185, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %35 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %36 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %36, align 8, !alias.scope !1182, !noalias !1185, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %35, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1189
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %34, %_202
  br i1 %_7.i.i.i, label %bb4.i44, label %bb5.i.i.i

bb4.i44:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %self1.i.i.i.i1.i45 = load i64, ptr %dp, align 8, !range !22, !alias.scope !1199, !noalias !1202, !noundef !6
  %_6.i.i.i.i2.i46 = icmp eq i64 %self1.i.i.i.i1.i45, 0
  br i1 %_6.i.i.i.i2.i46, label %bb25, label %bb2.i.i.i3.i47

bb2.i.i.i3.i47:                                   ; preds = %bb4.i44
  %37 = mul nuw i64 %self1.i.i.i.i1.i45, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_203, i64 noundef %37, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1204
  br label %bb25

bb25:                                             ; preds = %bb2.i.i.i3.i47, %bb4.i44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %self1.i.i.i.i1.i49 = load i64, ptr %b, align 8, !range !22, !alias.scope !1217, !noalias !1220, !noundef !6
  %_6.i.i.i.i2.i50 = icmp eq i64 %self1.i.i.i.i1.i49, 0
  br i1 %_6.i.i.i.i2.i50, label %bb26, label %bb2.i.i.i3.i51

bb2.i.i.i3.i51:                                   ; preds = %bb25
  %38 = shl nuw i64 %self1.i.i.i.i1.i49, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_166, i64 noundef %38, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1222
  br label %bb26

bb31:                                             ; preds = %bb2.i.i.i3.i40, %bb30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %self1.i.i.i.i1.i55 = load i64, ptr %a, align 8, !range !22, !alias.scope !1235, !noalias !1238, !noundef !6
  %_6.i.i.i.i2.i56 = icmp eq i64 %self1.i.i.i.i1.i55, 0
  br i1 %_6.i.i.i.i2.i56, label %bb32, label %bb2.i.i.i3.i57

bb2.i.i.i3.i57:                                   ; preds = %bb31
  %39 = shl nuw i64 %self1.i.i.i.i1.i55, 2
  %40 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %self3.i.i.i.i4.i58 = load ptr, ptr %40, align 8, !alias.scope !1235, !noalias !1238, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i58, i64 noundef %39, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1240
  br label %bb32

bb26:                                             ; preds = %bb2.i.i.i3.i51, %bb25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %self1.i.i.i.i1.i61 = load i64, ptr %a, align 8, !range !22, !alias.scope !1253, !noalias !1256, !noundef !6
  %_6.i.i.i.i2.i62 = icmp eq i64 %self1.i.i.i.i1.i61, 0
  br i1 %_6.i.i.i.i2.i62, label %bb28, label %bb2.i.i.i3.i63

bb2.i.i.i3.i63:                                   ; preds = %bb26
  %41 = shl nuw i64 %self1.i.i.i.i1.i61, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_161, i64 noundef %41, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1258
  br label %bb28

bb28:                                             ; preds = %bb2.i.i.i3.i69, %bb27, %bb2.i.i.i3.i63, %bb26
  %_0.sroa.0.0 = phi i32 [ %33, %bb26 ], [ %33, %bb2.i.i.i3.i63 ], [ 1, %bb27 ], [ 1, %bb2.i.i.i3.i69 ]
  ret i32 %_0.sroa.0.0

bb8:                                              ; preds = %bb8.lr.ph, %bb24
  %iter1.sroa.0.0129 = phi i64 [ %iter.sroa.0.0130, %bb8.lr.ph ], [ %42, %bb24 ]
  %42 = add nuw nsw i64 %iter1.sroa.0.0129, 1
  br i1 %_16, label %bb10, label %bb57

bb10:                                             ; preds = %bb8
  %_17 = icmp eq i64 %iter1.sroa.0.0129, 0
  br i1 %_17, label %bb43, label %bb47

bb57:                                             ; preds = %bb8
  %_45 = getelementptr inbounds nuw i32, ptr %_161, i64 %iter1.sroa.0.0129
  %_44 = load i32, ptr %_45, align 4, !range !1259, !noundef !6
  %_46 = load i32, ptr %_47, align 4, !range !1259, !noundef !6
  %_43 = icmp eq i32 %_44, %_46
  br i1 %_43, label %bb21, label %bb22

bb22:                                             ; preds = %bb57
  br i1 %_205, label %bb64, label %panic30.invoke

bb21:                                             ; preds = %bb57
  br i1 %_205, label %bb58, label %panic30.invoke

bb64:                                             ; preds = %bb22
  %_61 = add nsw i64 %iter1.sroa.0.0129, -1
  %_208 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_207 = load i64, ptr %27, align 8, !noundef !6
  %_210 = icmp ult i64 %_61, %_207
  br i1 %_210, label %bb65, label %panic30.invoke

bb65:                                             ; preds = %bb64
  %_222 = icmp ult i64 %iter1.sroa.0.0129, %_207
  br i1 %_222, label %bb67, label %panic30.invoke

bb67:                                             ; preds = %bb65
  %_59 = getelementptr inbounds nuw i32, ptr %_208, i64 %_61
  %_58 = load i32, ptr %_59, align 4, !noundef !6
  %_62 = getelementptr inbounds nuw i32, ptr %_208, i64 %iter1.sroa.0.0129
  store i32 %_58, ptr %_62, align 4
  br label %bb24

bb58:                                             ; preds = %bb21
  %_51 = add nsw i64 %iter1.sroa.0.0129, -1
  %_176 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_175 = load i64, ptr %27, align 8, !noundef !6
  %_178 = icmp ult i64 %_51, %_175
  br i1 %_178, label %bb59, label %panic30.invoke

bb59:                                             ; preds = %bb58
  %_49 = getelementptr inbounds nuw i32, ptr %_176, i64 %_51
  %_48 = load i32, ptr %_49, align 4, !noundef !6
  br i1 %_183, label %bb60, label %panic30.invoke

bb60:                                             ; preds = %bb59
  %_185 = load i64, ptr %28, align 8, !noundef !6
  %_188 = icmp ult i64 %_51, %_185
  br i1 %_188, label %bb61, label %panic30.invoke

bb61:                                             ; preds = %bb60
  %_200 = icmp ult i64 %iter1.sroa.0.0129, %_175
  br i1 %_200, label %bb63, label %panic30.invoke

bb63:                                             ; preds = %bb61
  %_186 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw i32, ptr %_186, i64 %_51
  %_52 = load i32, ptr %_53, align 4, !noundef !6
  %_56 = getelementptr inbounds nuw i32, ptr %_176, i64 %iter1.sroa.0.0129
  %43 = add i32 %_52, %_48
  store i32 %43, ptr %_56, align 4
  br label %bb24

bb24:                                             ; preds = %bb45, %bb51, %bb55, %bb67, %bb63
  %exitcond.not = icmp eq i64 %42, %n
  br i1 %exitcond.not, label %bb3.loopexit, label %bb8

bb47:                                             ; preds = %bb10
  %_28 = getelementptr inbounds nuw i32, ptr %_161, i64 %iter1.sroa.0.0129
  %_27 = load i32, ptr %_28, align 4, !range !1259, !noundef !6
  %_29 = load i32, ptr %_166, align 4, !range !1259, !noundef !6
  %_26 = icmp eq i32 %_27, %_29
  br i1 %_26, label %bb16, label %bb17

bb17:                                             ; preds = %bb47
  br i1 %_141.not, label %panic30.invoke, label %bb52

bb16:                                             ; preds = %bb47
  br i1 %_141.not, label %panic30.invoke, label %bb48

bb52:                                             ; preds = %bb17
  %_40 = add nsw i64 %iter1.sroa.0.0129, -1
  %_144 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_143 = load i64, ptr %24, align 8, !noundef !6
  %_146 = icmp ult i64 %_40, %_143
  br i1 %_146, label %bb53, label %panic30.invoke

bb53:                                             ; preds = %bb52
  %_158 = icmp ult i64 %iter1.sroa.0.0129, %_143
  br i1 %_158, label %bb55, label %panic30.invoke

bb55:                                             ; preds = %bb53
  %_38 = getelementptr inbounds nuw i32, ptr %_144, i64 %_40
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  %_41 = getelementptr inbounds nuw i32, ptr %_144, i64 %iter1.sroa.0.0129
  store i32 %_37, ptr %_41, align 4
  br label %bb24

bb48:                                             ; preds = %bb16
  %_34 = add nsw i64 %iter1.sroa.0.0129, -1
  %_122 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_121 = load i64, ptr %24, align 8, !noundef !6
  %_124 = icmp ult i64 %_34, %_121
  br i1 %_124, label %bb49, label %panic30.invoke

bb49:                                             ; preds = %bb48
  %_136 = icmp ult i64 %iter1.sroa.0.0129, %_121
  br i1 %_136, label %bb51, label %panic30.invoke

bb51:                                             ; preds = %bb49
  %_32 = getelementptr inbounds nuw i32, ptr %_122, i64 %_34
  %_31 = load i32, ptr %_32, align 4, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_122, i64 %iter1.sroa.0.0129
  %44 = add i32 %_31, 1
  store i32 %44, ptr %_35, align 4
  br label %bb24

bb43:                                             ; preds = %bb10
  %_20 = load i32, ptr %_161, align 4, !range !1259, !noundef !6
  %_22 = load i32, ptr %_166, align 4, !range !1259, !noundef !6
  %_19 = icmp eq i32 %_20, %_22
  %. = zext i1 %_19 to i32
  br i1 %_141.not, label %panic30.invoke, label %bb44

bb44:                                             ; preds = %bb43
  %_101 = load i64, ptr %24, align 8, !noundef !6
  %_104.not = icmp eq i64 %_101, 0
  br i1 %_104.not, label %panic30.invoke, label %bb45

bb45:                                             ; preds = %bb44
  %_102 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  store i32 %., ptr %_102, align 4
  br label %bb24

panic30.invoke:                                   ; preds = %bb44, %bb43, %bb49, %bb48, %bb16, %bb53, %bb52, %bb17, %bb61, %bb60, %bb59, %bb58, %bb21, %bb65, %bb64, %bb22, %bb6, %bb38
  %45 = phi i64 [ %_67, %bb38 ], [ %_66, %bb6 ], [ %iter.sroa.0.0130, %bb22 ], [ %_61, %bb64 ], [ %iter1.sroa.0.0129, %bb65 ], [ %iter.sroa.0.0130, %bb21 ], [ %_51, %bb58 ], [ %_55, %bb59 ], [ %_51, %bb60 ], [ %iter1.sroa.0.0129, %bb61 ], [ 0, %bb17 ], [ %_40, %bb52 ], [ %iter1.sroa.0.0129, %bb53 ], [ 0, %bb16 ], [ %_34, %bb48 ], [ %iter1.sroa.0.0129, %bb49 ], [ 0, %bb43 ], [ 0, %bb44 ]
  %46 = phi i64 [ %_224, %bb38 ], [ %_202, %bb6 ], [ %_202, %bb22 ], [ %_207, %bb64 ], [ %_207, %bb65 ], [ %_202, %bb21 ], [ %_175, %bb58 ], [ %_202, %bb59 ], [ %_185, %bb60 ], [ %_175, %bb61 ], [ 0, %bb17 ], [ %_143, %bb52 ], [ %_143, %bb53 ], [ 0, %bb16 ], [ %_121, %bb48 ], [ %_121, %bb49 ], [ 0, %bb43 ], [ 0, %bb44 ]
  %47 = phi ptr [ @alloc_dd67ea89b5644bb05725e50b4df6688b, %bb38 ], [ @alloc_0a16c3125cc6bab935142c91cea93e80, %bb6 ], [ @alloc_071548ff8d4fec0d7784fbb777fc5790, %bb22 ], [ @alloc_c655c6356d30e8de6bd36a6ed9a9fa33, %bb64 ], [ @alloc_9fce28314282ad78b81c2c988896b426, %bb65 ], [ @alloc_e4c31eaea05db6f83371620805c4a253, %bb21 ], [ @alloc_1b48e366bc3a9f420850e7d5d1babf90, %bb58 ], [ @alloc_8279e950242aa569aff7a93911db9c8e, %bb59 ], [ @alloc_0672ea045b4da33727945e5e13cffe53, %bb60 ], [ @alloc_92c9b73a7ed86c6283c9f63cf655c7a2, %bb61 ], [ @alloc_dbdc8ef9ca32770a7b4e69e792ad1d31, %bb17 ], [ @alloc_385247ccc61107d393044313eb115c52, %bb52 ], [ @alloc_c9a3d92d01657868b6dab2e71a680de4, %bb53 ], [ @alloc_8673982a8796fe66743bf99b6aac8bb1, %bb16 ], [ @alloc_bdb8c5fb7c5ef3cafe4826a03b716226, %bb48 ], [ @alloc_8694ea0f3961cc7bf551d46849a0c483, %bb49 ], [ @alloc_df949329c11abe3c58bdc361191879eb, %bb43 ], [ @alloc_61bb65203435de9b41df5c621b38036f, %bb44 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %45, i64 noundef %46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %47) #21
          to label %panic30.cont unwind label %cleanup2

panic30.cont:                                     ; preds = %panic30.invoke
  unreachable

bb27:                                             ; preds = %bb2.i.i.i3.i, %bb1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %self1.i.i.i.i1.i67 = load i64, ptr %a, align 8, !range !22, !alias.scope !1272, !noalias !1275, !noundef !6
  %_6.i.i.i.i2.i68 = icmp eq i64 %self1.i.i.i.i1.i67, 0
  br i1 %_6.i.i.i.i2.i68, label %bb28, label %bb2.i.i.i3.i69

bb2.i.i.i3.i69:                                   ; preds = %bb27
  %48 = shl nuw i64 %self1.i.i.i.i1.i67, 2
  %49 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %self3.i.i.i.i4.i70 = load ptr, ptr %49, align 8, !alias.scope !1272, !noalias !1275, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i70, i64 noundef %48, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1277
  br label %bb28

bb32:                                             ; preds = %bb2.i.i.i3.i57, %bb31
  resume { ptr, i32 } %.pn
}
