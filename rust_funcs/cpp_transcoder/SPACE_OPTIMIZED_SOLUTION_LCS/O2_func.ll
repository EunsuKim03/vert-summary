define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %X, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %Y) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %L = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %X, i64 16
  %m = load i64, ptr %0, align 8, !noundef !6
  %_60 = icmp sgt i64 %m, -1
  tail call void @llvm.assume(i1 %_60)
  %1 = getelementptr inbounds nuw i8, ptr %Y, i64 16
  %n = load i64, ptr %1, align 8, !noundef !6
  %_61 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_61)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %L)
  %_7 = add nuw i64 %n, 1
  %_21.0.i.i.i = shl i64 %_7, 2
  %_21.1.i.i.i = icmp samesign ugt i64 %n, 4611686018427387902
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1080
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1080
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb22

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb19:                                             ; preds = %cleanup2, %cleanup1.body.i, %bb2.i.i.i3.i.i46, %cleanup
  %.pn = phi { ptr, i32 } [ %25, %cleanup2 ], [ %5, %cleanup ], [ %12, %cleanup1.body.i ], [ %13, %bb2.i.i.i3.i.i46 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i = load i64, ptr %Y, align 8, !range !22, !alias.scope !1100, !noalias !1103, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb20, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb19
  %4 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1100, !noalias !1103, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1105
  br label %bb20

cleanup:                                          ; preds = %bb14.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb22:                                             ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1106
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1110
; call __rustc::__rust_alloc
  %6 = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 8) #20, !noalias !1110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i:                                          ; preds = %bb22
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 48) #22
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i46, !noalias !1106

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb3.i.i.i.i.i.i:                                  ; preds = %bb22
  store i64 2, ptr %v.i, align 8, !noalias !1106
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %6, ptr %8, align 8, !noalias !1106
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1116
; call __rustc::__rust_alloc
  %10 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i.i.i.i, label %bb23

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1126

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %9, align 8, !alias.scope !1113, !noalias !1127
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1132
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1106
  br label %bb19

bb2.i.i.i3.i.i46:                                 ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1141
  br label %bb19

bb23:                                             ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %10, ptr nonnull readonly align 4 %2, i64 %_21.0.i.i.i, i1 false), !noalias !1150
  store i64 %_7, ptr %6, align 8, !noalias !1126
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %10, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1126
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %_7, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1126
  %_15.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %_7, ptr %_15.i.i, align 8, !noalias !1151
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %2, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1151
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %_7, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1151
  store i64 2, ptr %9, align 8, !alias.scope !1113, !noalias !1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %L, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1106
  %14 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %_82 = load ptr, ptr %14, align 8, !nonnull !6
  %_89 = getelementptr inbounds nuw i8, ptr %_82, i64 %m
  %15 = getelementptr inbounds nuw i8, ptr %_29, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %Y, i64 8
  %_103 = load ptr, ptr %16, align 8, !nonnull !6
  %_110 = getelementptr inbounds nuw i8, ptr %_103, i64 %n
  %17 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_150 = load ptr, ptr %18, align 8, !nonnull !6
  %19 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %_149 = load i64, ptr %19, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb14
  %_0.i.not.i = icmp samesign ugt i64 %spec.select151, %m
  %or.cond156 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond156, label %bb25, label %bb2.i

bb2.i:                                            ; preds = %bb23, %bb1.loopexit
  %iter.sroa.0.0220 = phi i64 [ 0, %bb23 ], [ %spec.select151, %bb1.loopexit ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0220, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select151 = add nuw nsw i64 %iter.sroa.0.0220, %_0.i4.i
  %20 = and i64 %iter.sroa.0.0220, 1
  %_21 = icmp eq i64 %iter.sroa.0.0220, 0
  %_31 = add nsw i64 %iter.sroa.0.0220, -1
  %_49 = xor i64 %20, 1
  %_152 = icmp ult i64 %_49, %_149
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_150, i64 %_49
  %21 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %_162 = icmp ult i64 %20, %_149
  %_53 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_150, i64 %20
  %23 = getelementptr inbounds nuw i8, ptr %_53, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_53, i64 8
  br label %bb2.i72

cleanup2:                                         ; preds = %panic16.invoke
  %25 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h44214dba56b9c7e4E"(ptr noalias noundef align 8 dereferenceable(24) %L) #24
  br label %bb19

bb25:                                             ; preds = %bb1.loopexit
  %_181 = load i64, ptr %23, align 8, !noundef !6
  %_184 = icmp ult i64 %n, %_181
  br i1 %_184, label %bb61, label %panic16.invoke

bb61:                                             ; preds = %bb25
  %_182 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_58 = getelementptr inbounds nuw i32, ptr %_182, i64 %n
  %_0 = load i32, ptr %_58, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb61, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i" ], [ 0, %bb61 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_150, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1176, !noalias !1179, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %28, align 8, !alias.scope !1176, !noalias !1179, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1183
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %_149
  br i1 %_7.i.i.i, label %bb4.i50, label %bb5.i.i.i

bb4.i50:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h594295e0659e970fE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %self1.i.i.i.i1.i = load i64, ptr %L, align 8, !range !22, !alias.scope !1193, !noalias !1196, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb15, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i50
  %29 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_150, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1198
  br label %bb15

bb15:                                             ; preds = %bb2.i.i.i3.i, %bb4.i50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %L)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %self1.i.i.i.i1.i.i51 = load i64, ptr %Y, align 8, !range !22, !alias.scope !1214, !noalias !1217, !noundef !6
  %_6.i.i.i.i2.i.i52 = icmp eq i64 %self1.i.i.i.i1.i.i51, 0
  br i1 %_6.i.i.i.i2.i.i52, label %bb16, label %bb2.i.i.i3.i.i53

bb2.i.i.i3.i.i53:                                 ; preds = %bb15
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_103, i64 noundef %self1.i.i.i.i1.i.i51, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1219
  br label %bb16

bb20:                                             ; preds = %bb2.i.i.i3.i.i, %bb19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %self1.i.i.i.i1.i.i56 = load i64, ptr %X, align 8, !range !22, !alias.scope !1235, !noalias !1238, !noundef !6
  %_6.i.i.i.i2.i.i57 = icmp eq i64 %self1.i.i.i.i1.i.i56, 0
  br i1 %_6.i.i.i.i2.i.i57, label %bb21, label %bb2.i.i.i3.i.i58

bb2.i.i.i3.i.i58:                                 ; preds = %bb20
  %30 = getelementptr inbounds nuw i8, ptr %X, i64 8
  %self3.i.i.i.i4.i.i59 = load ptr, ptr %30, align 8, !alias.scope !1235, !noalias !1238, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i59, i64 noundef %self1.i.i.i.i1.i.i56, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1240
  br label %bb21

bb16:                                             ; preds = %bb2.i.i.i3.i.i53, %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %self1.i.i.i.i1.i.i61 = load i64, ptr %X, align 8, !range !22, !alias.scope !1256, !noalias !1259, !noundef !6
  %_6.i.i.i.i2.i.i62 = icmp eq i64 %self1.i.i.i.i1.i.i61, 0
  br i1 %_6.i.i.i.i2.i.i62, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit65", label %bb2.i.i.i3.i.i63

bb2.i.i.i3.i.i63:                                 ; preds = %bb16
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_82, i64 noundef %self1.i.i.i.i1.i.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1261
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit65"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcbe033eebee81fb1E.exit65": ; preds = %bb16, %bb2.i.i.i3.i.i63
  ret i32 %_0

bb2.i72:                                          ; preds = %bb2.i, %bb14
  %iter1.sroa.0.0219 = phi i64 [ 0, %bb2.i ], [ %spec.select153, %bb14 ]
  %_0.i3.i73 = icmp samesign uge i64 %iter1.sroa.0.0219, %n
  %not._0.i3.i73 = xor i1 %_0.i3.i73, true
  %_0.i4.i78 = zext i1 %not._0.i3.i73 to i64
  %spec.select153 = add nuw nsw i64 %iter1.sroa.0.0219, %_0.i4.i78
  %_22 = icmp eq i64 %iter1.sroa.0.0219, 0
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb9, label %bb10

bb9:                                              ; preds = %bb2.i72
  br i1 %_162, label %bb27, label %panic16.invoke

bb10:                                             ; preds = %bb2.i72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_29)
  store ptr %_82, ptr %_29, align 8
  store ptr %_89, ptr %15, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_93 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_29, i64 noundef %_31)
  %.not = icmp eq i64 %_93, 0
  br i1 %.not, label %bb32, label %bb30

bb32:                                             ; preds = %bb10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %ptr.i.i = load ptr, ptr %_29, align 8, !alias.scope !1265, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %15, align 8, !alias.scope !1265, !nonnull !6, !noundef !6
  %_7.i.i.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i.not, label %bb30, label %bb14.i80

bb14.i80:                                         ; preds = %bb32
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1262, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i85, label %bb4.i81

bb4.i81:                                          ; preds = %bb14.i80
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1262, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %31 = or disjoint i32 %_34.i, %_35.i
  %_13.i82 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i82, label %bb6.i84, label %bb30

bb3.i85:                                          ; preds = %bb14.i80
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb30

bb6.i84:                                          ; preds = %bb4.i81
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1262, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %32 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb30

bb8.i:                                            ; preds = %bb6.i84
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1262, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %33 = or disjoint i32 %_27.i, %_25.i
  br label %bb30

bb30:                                             ; preds = %bb32, %bb4.i81, %bb3.i85, %bb6.i84, %bb8.i, %bb10
  %_27.sroa.0.1 = phi i32 [ 1114112, %bb10 ], [ %_7.i, %bb3.i85 ], [ %33, %bb8.i ], [ %32, %bb6.i84 ], [ %31, %bb4.i81 ], [ 1114112, %bb32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_103, ptr %_34, align 8
  store ptr %_110, ptr %17, align 8
  %_36 = add nsw i64 %iter1.sroa.0.0219, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_114 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %_36)
  %.not38 = icmp eq i64 %_114, 0
  br i1 %.not38, label %bb40, label %bb38.thread

bb40:                                             ; preds = %bb30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %ptr.i.i86 = load ptr, ptr %_34, align 8, !alias.scope !1271, !nonnull !6, !noundef !6
  %end_or_len.i.i87 = load ptr, ptr %17, align 8, !alias.scope !1271, !nonnull !6, !noundef !6
  %_7.i.i88.not = icmp eq ptr %ptr.i.i86, %end_or_len.i.i87
  br i1 %_7.i.i88.not, label %bb38.thread279, label %bb14.i89

bb14.i89:                                         ; preds = %bb40
  %x.i91 = load i8, ptr %ptr.i.i86, align 1, !noalias !1268, !noundef !6
  %_6.i92 = icmp sgt i8 %x.i91, -1
  br i1 %_6.i92, label %bb3.i125, label %bb4.i93

bb4.i93:                                          ; preds = %bb14.i89
  %_18.i.i90 = getelementptr inbounds nuw i8, ptr %ptr.i.i86, i64 1
  %_30.i94 = and i8 %x.i91, 31
  %init.i95 = zext nneg i8 %_30.i94 to i32
  %_7.i10.i96 = icmp ne ptr %_18.i.i90, %end_or_len.i.i87
  tail call void @llvm.assume(i1 %_7.i10.i96)
  %y.i98 = load i8, ptr %_18.i.i90, align 1, !noalias !1268, !noundef !6
  %_34.i99 = shl nuw nsw i32 %init.i95, 6
  %_36.i100 = and i8 %y.i98, 63
  %_35.i101 = zext nneg i8 %_36.i100 to i32
  %34 = or disjoint i32 %_34.i99, %_35.i101
  %_13.i102 = icmp samesign ugt i8 %x.i91, -33
  br i1 %_13.i102, label %bb6.i105, label %bb38

bb3.i125:                                         ; preds = %bb14.i89
  %_7.i126 = zext nneg i8 %x.i91 to i32
  br label %bb38

bb6.i105:                                         ; preds = %bb4.i93
  %_18.i12.i97 = getelementptr inbounds nuw i8, ptr %ptr.i.i86, i64 2
  %_7.i17.i106 = icmp ne ptr %_18.i12.i97, %end_or_len.i.i87
  tail call void @llvm.assume(i1 %_7.i17.i106)
  %z.i108 = load i8, ptr %_18.i12.i97, align 1, !noalias !1268, !noundef !6
  %_40.i109 = shl nuw nsw i32 %_35.i101, 6
  %_42.i110 = and i8 %z.i108, 63
  %_41.i111 = zext nneg i8 %_42.i110 to i32
  %y_z.i112 = or disjoint i32 %_40.i109, %_41.i111
  %_20.i113 = shl nuw nsw i32 %init.i95, 12
  %35 = or disjoint i32 %y_z.i112, %_20.i113
  %_21.i114 = icmp samesign ugt i8 %x.i91, -17
  br i1 %_21.i114, label %bb8.i115, label %bb38

bb8.i115:                                         ; preds = %bb6.i105
  %_18.i19.i107 = getelementptr inbounds nuw i8, ptr %ptr.i.i86, i64 3
  %_7.i24.i116 = icmp ne ptr %_18.i19.i107, %end_or_len.i.i87
  tail call void @llvm.assume(i1 %_7.i24.i116)
  %w.i118 = load i8, ptr %_18.i19.i107, align 1, !noalias !1268, !noundef !6
  %_26.i119 = shl nuw nsw i32 %init.i95, 18
  %_25.i120 = and i32 %_26.i119, 1835008
  %_46.i121 = shl nuw nsw i32 %y_z.i112, 6
  %_48.i122 = and i8 %w.i118, 63
  %_47.i123 = zext nneg i8 %_48.i122 to i32
  %_27.i124 = or disjoint i32 %_46.i121, %_47.i123
  %36 = or disjoint i32 %_27.i124, %_25.i120
  br label %bb38

bb38:                                             ; preds = %bb4.i93, %bb3.i125, %bb6.i105, %bb8.i115
  %spec.select43 = phi i32 [ %_7.i126, %bb3.i125 ], [ %36, %bb8.i115 ], [ %35, %bb6.i105 ], [ %34, %bb4.i93 ]
  %.not39 = icmp eq i32 %_27.sroa.0.1, 1114112
  br i1 %.not39, label %bb45, label %bb46

bb38.thread279:                                   ; preds = %bb40
  %.not39281 = icmp eq i32 %_27.sroa.0.1, 1114112
  br i1 %.not39281, label %bb11, label %bb12

bb38.thread:                                      ; preds = %bb30
  %.not39145 = icmp eq i32 %_27.sroa.0.1, 1114112
  br i1 %.not39145, label %bb11, label %bb12

bb46:                                             ; preds = %bb38
  %.not40 = icmp ne i32 %spec.select43, 1114112
  %37 = icmp eq i32 %_27.sroa.0.1, %spec.select43
  %or.cond155 = select i1 %.not40, i1 %37, i1 false
  br i1 %or.cond155, label %bb11, label %bb12

bb45:                                             ; preds = %bb38
  %38 = icmp eq i32 %spec.select43, 1114112
  br i1 %38, label %bb11, label %bb12

bb12:                                             ; preds = %bb38.thread279, %bb38.thread, %bb46, %bb45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  br i1 %_152, label %bb54, label %panic16.invoke

bb11:                                             ; preds = %bb38.thread279, %bb46, %bb38.thread, %bb45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  br i1 %_152, label %bb50, label %panic16.invoke

bb54:                                             ; preds = %bb12
  %_154 = load i64, ptr %21, align 8, !noundef !6
  %_157 = icmp ult i64 %iter1.sroa.0.0219, %_154
  br i1 %_157, label %bb55, label %panic16.invoke

bb55:                                             ; preds = %bb54
  %_155 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_47 = getelementptr inbounds nuw i32, ptr %_155, i64 %iter1.sroa.0.0219
  %_46 = load i32, ptr %_47, align 4, !noundef !6
  br i1 %_162, label %bb56, label %panic16.invoke

bb56:                                             ; preds = %bb55
  %_164 = load i64, ptr %23, align 8, !noundef !6
  %_167 = icmp ult i64 %_36, %_164
  br i1 %_167, label %bb59, label %panic16.invoke

bb59:                                             ; preds = %bb56
  %_179 = icmp ult i64 %iter1.sroa.0.0219, %_164
  br i1 %_179, label %bb60, label %panic16.invoke

bb60:                                             ; preds = %bb59
  %_165 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw i32, ptr %_165, i64 %_36
  %_51 = load i32, ptr %_52, align 4, !noundef !6
  %_0.sroa.0.0.i128 = tail call noundef i32 @llvm.smax.i32(i32 %_51, i32 %_46)
  %_55 = getelementptr inbounds nuw i32, ptr %_165, i64 %iter1.sroa.0.0219
  store i32 %_0.sroa.0.0.i128, ptr %_55, align 4
  br label %bb14

bb50:                                             ; preds = %bb11
  %_132 = load i64, ptr %21, align 8, !noundef !6
  %_135 = icmp ult i64 %_36, %_132
  br i1 %_135, label %bb51, label %panic16.invoke

bb51:                                             ; preds = %bb50
  %_133 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_133, i64 %_36
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  br i1 %_162, label %bb52, label %panic16.invoke

bb52:                                             ; preds = %bb51
  %_144 = load i64, ptr %23, align 8, !noundef !6
  %_147 = icmp ult i64 %iter1.sroa.0.0219, %_144
  br i1 %_147, label %bb53, label %panic16.invoke

bb53:                                             ; preds = %bb52
  %_145 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw i32, ptr %_145, i64 %iter1.sroa.0.0219
  %39 = add i32 %_37, 1
  store i32 %39, ptr %_42, align 4
  br label %bb14

bb14:                                             ; preds = %bb60, %bb53, %bb28
  %_0.i.not.i71 = icmp samesign ugt i64 %spec.select153, %n
  %or.cond157 = select i1 %_0.i3.i73, i1 true, i1 %_0.i.not.i71
  br i1 %or.cond157, label %bb1.loopexit, label %bb2.i72

bb27:                                             ; preds = %bb9
  %_75 = load i64, ptr %23, align 8, !noundef !6
  %_78 = icmp ult i64 %iter1.sroa.0.0219, %_75
  br i1 %_78, label %bb28, label %panic16.invoke

bb28:                                             ; preds = %bb27
  %_76 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_23 = getelementptr inbounds nuw i32, ptr %_76, i64 %iter1.sroa.0.0219
  store i32 0, ptr %_23, align 4
  br label %bb14

panic16.invoke:                                   ; preds = %bb27, %bb9, %bb52, %bb51, %bb50, %bb11, %bb59, %bb56, %bb55, %bb54, %bb12, %bb25
  %40 = phi i64 [ %n, %bb25 ], [ %_49, %bb12 ], [ %iter1.sroa.0.0219, %bb54 ], [ 1, %bb55 ], [ %_36, %bb56 ], [ %iter1.sroa.0.0219, %bb59 ], [ %_49, %bb11 ], [ %_36, %bb50 ], [ 1, %bb51 ], [ %iter1.sroa.0.0219, %bb52 ], [ %20, %bb9 ], [ %iter1.sroa.0.0219, %bb27 ]
  %41 = phi i64 [ %_181, %bb25 ], [ %_149, %bb12 ], [ %_154, %bb54 ], [ 1, %bb55 ], [ %_164, %bb56 ], [ %_164, %bb59 ], [ %_149, %bb11 ], [ %_132, %bb50 ], [ 1, %bb51 ], [ %_144, %bb52 ], [ %_149, %bb9 ], [ %_75, %bb27 ]
  %42 = phi ptr [ @alloc_8cb7c192ee1ec0060ed9f767f36f2c9e, %bb25 ], [ @alloc_455f6da57be4aa27106e364f8d7b8599, %bb12 ], [ @alloc_7ecdd2b7719c07fbecfa7e040c70555b, %bb54 ], [ @alloc_d0e34cd241e8189c6593b7385f5f379c, %bb55 ], [ @alloc_037f547cb5df5bedfad12176aeb72b79, %bb56 ], [ @alloc_a9c490451cd9c7d3a440aacf8c0d7183, %bb59 ], [ @alloc_d5ba85c33213dac699e5ee0a47dd0a37, %bb11 ], [ @alloc_f1e41b190b84bd02d38089fab6d74940, %bb50 ], [ @alloc_cf20fb0e18c4ea37932feaeda39df7cf, %bb51 ], [ @alloc_4a22b1a21adf3638edf77849667ba91c, %bb52 ], [ @alloc_a99a63d008f34bc6907e6f9478a494d7, %bb9 ], [ @alloc_f5e2ee6bccd6b724dfb61b6dd55a2ee7, %bb27 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %40, i64 noundef %41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #22
          to label %panic16.cont unwind label %cleanup2

panic16.cont:                                     ; preds = %panic16.invoke
  unreachable

bb21:                                             ; preds = %bb2.i.i.i3.i.i58, %bb20
  resume { ptr, i32 } %.pn
}
