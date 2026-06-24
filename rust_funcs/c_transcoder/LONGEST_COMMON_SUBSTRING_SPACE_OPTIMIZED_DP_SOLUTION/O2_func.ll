define noundef range(i32 0, -2147483648) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %X, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %Y) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %len = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %X, i64 16
  %m = load i64, ptr %0, align 8, !noundef !6
  %_50 = icmp ult i64 %m, 2305843009213693952
  tail call void @llvm.assume(i1 %_50)
  %1 = getelementptr inbounds nuw i8, ptr %Y, i64 16
  %n = load i64, ptr %1, align 8, !noundef !6
  %_51 = icmp ult i64 %n, 2305843009213693952
  tail call void @llvm.assume(i1 %_51)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %len)
  %_8 = add nuw nsw i64 %n, 1
  %_26.i.i.i = icmp eq i64 %n, 2305843009213693951
  br i1 %_26.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %start
  %2 = shl nuw nsw i64 %_8, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i, label %bb22

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
  %_16.sroa.10.0.ph.i = phi i64 [ %2, %bb3.i3.i ], [ undef, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_16.sroa.10.0.ph.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb19:                                             ; preds = %cleanup2, %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %.pn = phi { ptr, i32 } [ %24, %cleanup2 ], [ %7, %cleanup ], [ %14, %cleanup1.body.i ], [ %15, %bb2.i.i.i3.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %self1.i.i.i.i1.i = load i64, ptr %Y, align 8, !range !22, !alias.scope !1088, !noalias !1091, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb20, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb19
  %5 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %6 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %self3.i.i.i.i4.i = load ptr, ptr %6, align 8, !alias.scope !1088, !noalias !1091, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1093
  br label %bb20

cleanup:                                          ; preds = %bb14.i
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb22:                                             ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1094
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1098
; call __rustc::__rust_alloc
  %8 = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 8) #19, !noalias !1098
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i:                                          ; preds = %bb22
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 48) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1094

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb3.i.i.i.i.i.i:                                  ; preds = %bb22
  store i64 2, ptr %v.i, align 8, !noalias !1094
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %8, ptr %10, align 8, !noalias !1094
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1104
; call __rustc::__rust_alloc
  %12 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 4, 9) 4) #19, !noalias !1104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb3.i.i.i.i.i, label %bb23

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %2) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1114

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %11, align 8, !alias.scope !1101, !noalias !1115
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1120
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1094
  br label %bb19

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1129
  br label %bb19

bb23:                                             ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %12, ptr noundef nonnull readonly align 4 dereferenceable(1) %3, i64 %2, i1 false), !noalias !1138
  store i64 %_8, ptr %8, align 8, !noalias !1114
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %12, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1114
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %_8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1114
  %_15.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %_8, ptr %_15.i.i, align 8, !noalias !1139
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %3, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1139
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %_8, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1139
  store i64 2, ptr %11, align 8, !alias.scope !1101, !noalias !1140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %len, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1094
  %16 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %_71 = load ptr, ptr %16, align 8, !nonnull !6
  %17 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %_66 = load ptr, ptr %17, align 8, !nonnull !6
  %18 = getelementptr inbounds nuw i8, ptr %len, i64 16
  %_108 = load i64, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %len, i64 8
  %_109 = load ptr, ptr %19, align 8, !nonnull !6
  br label %bb2.i

bb2.i:                                            ; preds = %bb23, %bb7
  %result.sroa.0.0162 = phi i32 [ 0, %bb23 ], [ %result.sroa.0.2, %bb7 ]
  %curr_row.sroa.0.0161 = phi i64 [ 0, %bb23 ], [ %33, %bb7 ]
  %iter.sroa.0.0160 = phi i64 [ 0, %bb23 ], [ %spec.select, %bb7 ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0160, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter.sroa.0.0160, %_0.i4.i
  %_21 = icmp eq i64 %iter.sroa.0.0160, 0
  %_29 = add nsw i64 %iter.sroa.0.0160, -1
  %_68 = icmp ult i64 %_29, %m
  %_28 = getelementptr inbounds nuw i32, ptr %_66, i64 %_29
  %_111 = icmp ult i64 %curr_row.sroa.0.0161, %_108
  %_47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_109, i64 %curr_row.sroa.0.0161
  %20 = getelementptr inbounds nuw i8, ptr %_47, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %_36 = sub nuw nsw i64 1, %curr_row.sroa.0.0161
  %_78 = icmp ult i64 %_36, %_108
  %_35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_109, i64 %_36
  %22 = getelementptr inbounds nuw i8, ptr %_35, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  br label %bb2.i56

cleanup2:                                         ; preds = %panic14.invoke
  %24 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h35fa1469dee8cf96E"(ptr noalias noundef align 8 dereferenceable(24) %len) #23
  br label %bb19

bb5.i.i.i.preheader:                              ; preds = %bb7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_109, i64 %_3.sroa.0.012.i.i.i
  %25 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %26 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1164, !noalias !1167, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1171
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %25, %_108
  br i1 %_7.i.i.i, label %bb4.i28, label %bb5.i.i.i

bb4.i28:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1b370899bbdea864E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %self1.i.i.i.i1.i29 = load i64, ptr %len, align 8, !range !22, !alias.scope !1181, !noalias !1184, !noundef !6
  %_6.i.i.i.i2.i30 = icmp eq i64 %self1.i.i.i.i1.i29, 0
  br i1 %_6.i.i.i.i2.i30, label %bb15, label %bb2.i.i.i3.i31

bb2.i.i.i3.i31:                                   ; preds = %bb4.i28
  %28 = mul nuw i64 %self1.i.i.i.i1.i29, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_109, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1186
  br label %bb15

bb15:                                             ; preds = %bb2.i.i.i3.i31, %bb4.i28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %len)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %self1.i.i.i.i1.i33 = load i64, ptr %Y, align 8, !range !22, !alias.scope !1199, !noalias !1202, !noundef !6
  %_6.i.i.i.i2.i34 = icmp eq i64 %self1.i.i.i.i1.i33, 0
  br i1 %_6.i.i.i.i2.i34, label %bb16, label %bb2.i.i.i3.i35

bb2.i.i.i3.i35:                                   ; preds = %bb15
  %29 = shl nuw i64 %self1.i.i.i.i1.i33, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_71, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1204
  br label %bb16

bb20:                                             ; preds = %bb2.i.i.i3.i, %bb19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %self1.i.i.i.i1.i39 = load i64, ptr %X, align 8, !range !22, !alias.scope !1217, !noalias !1220, !noundef !6
  %_6.i.i.i.i2.i40 = icmp eq i64 %self1.i.i.i.i1.i39, 0
  br i1 %_6.i.i.i.i2.i40, label %bb21, label %bb2.i.i.i3.i41

bb2.i.i.i3.i41:                                   ; preds = %bb20
  %30 = shl nuw i64 %self1.i.i.i.i1.i39, 2
  %31 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %self3.i.i.i.i4.i42 = load ptr, ptr %31, align 8, !alias.scope !1217, !noalias !1220, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i42, i64 noundef %30, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1222
  br label %bb21

bb16:                                             ; preds = %bb2.i.i.i3.i35, %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %self1.i.i.i.i1.i45 = load i64, ptr %X, align 8, !range !22, !alias.scope !1235, !noalias !1238, !noundef !6
  %_6.i.i.i.i2.i46 = icmp eq i64 %self1.i.i.i.i1.i45, 0
  br i1 %_6.i.i.i.i2.i46, label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE.exit49", label %bb2.i.i.i3.i47

bb2.i.i.i3.i47:                                   ; preds = %bb16
  %32 = shl nuw i64 %self1.i.i.i.i1.i45, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_66, i64 noundef %32, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1240
  br label %"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE.exit49"

"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17h9d117c0ebf1b742cE.exit49": ; preds = %bb16, %bb2.i.i.i3.i47
  ret i32 %result.sroa.0.2

bb2.i56:                                          ; preds = %bb2.i, %bb14
  %result.sroa.0.1159 = phi i32 [ %result.sroa.0.0162, %bb2.i ], [ %result.sroa.0.2, %bb14 ]
  %iter1.sroa.0.0158 = phi i64 [ 0, %bb2.i ], [ %spec.select81, %bb14 ]
  %_0.i3.i57 = icmp samesign uge i64 %iter1.sroa.0.0158, %n
  %not._0.i3.i57 = xor i1 %_0.i3.i57, true
  %_0.i4.i62 = zext i1 %not._0.i3.i57 to i64
  %spec.select81 = add nuw nsw i64 %iter1.sroa.0.0158, %_0.i4.i62
  %_22 = icmp eq i64 %iter1.sroa.0.0158, 0
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb9, label %bb10

bb7:                                              ; preds = %bb14
  %33 = xor i64 %curr_row.sroa.0.0161, 1
  %_0.i.not.i = icmp samesign ugt i64 %spec.select, %m
  %or.cond83 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond83, label %bb5.i.i.i.preheader, label %bb2.i

bb9:                                              ; preds = %bb2.i56
  br i1 %_111, label %bb26, label %panic14.invoke

bb10:                                             ; preds = %bb2.i56
  br i1 %_68, label %bb28, label %panic14.invoke

bb28:                                             ; preds = %bb10
  %_32 = add nsw i64 %iter1.sroa.0.0158, -1
  %_73 = icmp ult i64 %_32, %n
  br i1 %_73, label %bb29, label %panic14.invoke

bb29:                                             ; preds = %bb28
  %_27 = load i32, ptr %_28, align 4, !range !1241, !noundef !6
  %_31 = getelementptr inbounds nuw i32, ptr %_71, i64 %_32
  %_30 = load i32, ptr %_31, align 4, !range !1241, !noundef !6
  %_26 = icmp eq i32 %_27, %_30
  br i1 %_26, label %bb11, label %bb12

bb12:                                             ; preds = %bb29
  br i1 %_111, label %bb37, label %panic14.invoke

bb11:                                             ; preds = %bb29
  br i1 %_78, label %bb30, label %panic14.invoke

bb37:                                             ; preds = %bb12
  %_114 = load i64, ptr %20, align 8, !noundef !6
  %_117 = icmp ult i64 %iter1.sroa.0.0158, %_114
  br i1 %_117, label %bb38, label %panic14.invoke

bb38:                                             ; preds = %bb37
  %_115 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_46 = getelementptr inbounds nuw i32, ptr %_115, i64 %iter1.sroa.0.0158
  store i32 0, ptr %_46, align 4
  br label %bb14

bb30:                                             ; preds = %bb11
  %_80 = load i64, ptr %22, align 8, !noundef !6
  %_83 = icmp ult i64 %_32, %_80
  br i1 %_83, label %bb31, label %panic14.invoke

bb31:                                             ; preds = %bb30
  %_81 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_34 = getelementptr inbounds nuw i32, ptr %_81, i64 %_32
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  br i1 %_111, label %bb32, label %panic14.invoke

bb32:                                             ; preds = %bb31
  %_92 = load i64, ptr %20, align 8, !noundef !6
  %_95 = icmp ult i64 %iter1.sroa.0.0158, %_92
  br i1 %_95, label %bb34, label %panic14.invoke

bb34:                                             ; preds = %bb32
  %_93 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_93, i64 %iter1.sroa.0.0158
  %34 = add i32 %_33, 1
  store i32 %34, ptr %_38, align 4
  %_102 = load i64, ptr %20, align 8, !noundef !6
  %_105 = icmp ult i64 %iter1.sroa.0.0158, %_102
  br i1 %_105, label %bb35, label %panic14.invoke

bb35:                                             ; preds = %bb34
  %_103 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_43 = getelementptr inbounds nuw i32, ptr %_103, i64 %iter1.sroa.0.0158
  %_42 = load i32, ptr %_43, align 4, !noundef !6
  %_0.sroa.0.0.i64 = tail call noundef i32 @llvm.smax.i32(i32 %_42, i32 %result.sroa.0.1159)
  br label %bb14

bb14:                                             ; preds = %bb35, %bb38, %bb27
  %result.sroa.0.2 = phi i32 [ %result.sroa.0.1159, %bb27 ], [ %result.sroa.0.1159, %bb38 ], [ %_0.sroa.0.0.i64, %bb35 ]
  %_0.i.not.i55 = icmp samesign ugt i64 %spec.select81, %n
  %or.cond84 = select i1 %_0.i3.i57, i1 true, i1 %_0.i.not.i55
  br i1 %or.cond84, label %bb7, label %bb2.i56

bb26:                                             ; preds = %bb9
  %_60 = load i64, ptr %20, align 8, !noundef !6
  %_63 = icmp ult i64 %iter1.sroa.0.0158, %_60
  br i1 %_63, label %bb27, label %panic14.invoke

bb27:                                             ; preds = %bb26
  %_61 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_23 = getelementptr inbounds nuw i32, ptr %_61, i64 %iter1.sroa.0.0158
  store i32 0, ptr %_23, align 4
  br label %bb14

panic14.invoke:                                   ; preds = %bb26, %bb9, %bb34, %bb32, %bb31, %bb30, %bb11, %bb37, %bb12, %bb28, %bb10
  %35 = phi i64 [ %_29, %bb10 ], [ %_32, %bb28 ], [ %curr_row.sroa.0.0161, %bb12 ], [ %iter1.sroa.0.0158, %bb37 ], [ %_36, %bb11 ], [ %_32, %bb30 ], [ 1, %bb31 ], [ %iter1.sroa.0.0158, %bb32 ], [ %iter1.sroa.0.0158, %bb34 ], [ %curr_row.sroa.0.0161, %bb9 ], [ %iter1.sroa.0.0158, %bb26 ]
  %36 = phi i64 [ %m, %bb10 ], [ %n, %bb28 ], [ %_108, %bb12 ], [ %_114, %bb37 ], [ %_108, %bb11 ], [ %_80, %bb30 ], [ 1, %bb31 ], [ %_92, %bb32 ], [ %_102, %bb34 ], [ %_108, %bb9 ], [ %_60, %bb26 ]
  %37 = phi ptr [ @alloc_ee90cd385a793a996b4f12488f2c6f5f, %bb10 ], [ @alloc_577db64b568d16f978893d443cb1a763, %bb28 ], [ @alloc_509309f5290e8c311c3a53ec0158fa09, %bb12 ], [ @alloc_104b0ad324db259d6811ae4c4205831b, %bb37 ], [ @alloc_6b67c9793a08ab13953c33e3b548f137, %bb11 ], [ @alloc_a7820674b4dc75777f0d085fc1a160fd, %bb30 ], [ @alloc_6624f1b308b14116cc11365dcd6de720, %bb31 ], [ @alloc_2edd0f8ae47cffc1c50dca07b62fb4c7, %bb32 ], [ @alloc_24ec1ed47324100026173cae137aed23, %bb34 ], [ @alloc_09ce889d9328b98e0cb50c2b25c6fd58, %bb9 ], [ @alloc_463264553f6ea60623796dd40c414753, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %35, i64 noundef %36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %37) #21
          to label %panic14.cont unwind label %cleanup2

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable

bb21:                                             ; preds = %bb2.i.i.i3.i41, %bb20
  resume { ptr, i32 } %.pn
}
