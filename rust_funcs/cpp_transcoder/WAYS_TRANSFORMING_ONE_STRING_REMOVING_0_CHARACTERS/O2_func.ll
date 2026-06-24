define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %a, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %b) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_58 = alloca [16 x i8], align 8
  %_54 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_80 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_80)
  %1 = getelementptr inbounds nuw i8, ptr %b, i64 16
  %m = load i64, ptr %1, align 8, !noundef !6
  %_81 = icmp sgt i64 %m, -1
  tail call void @llvm.assume(i1 %_81)
  %_5 = icmp eq i64 %m, 0
  br i1 %_5, label %bb26, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_8 = add nuw i64 %n, 1
  %_21.0.i.i.i = shl i64 %_8, 2
  %_21.1.i.i.i = icmp samesign ugt i64 %n, 4611686018427387902
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %bb2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1080
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1080
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb33

bb14.i:                                           ; preds = %bb3.i3.i, %bb2
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb2 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb30:                                             ; preds = %cleanup2, %cleanup1.body.i, %bb2.i.i.i3.i.i66, %cleanup
  %.pn = phi { ptr, i32 } [ %36, %cleanup2 ], [ %5, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb2.i.i.i3.i.i66 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i = load i64, ptr %b, align 8, !range !22, !alias.scope !1100, !noalias !1103, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb31, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb30
  %4 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1100, !noalias !1103, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1105
  br label %bb31

cleanup:                                          ; preds = %bb14.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb30

bb33:                                             ; preds = %bb3.i3.i
  %_9 = add nuw i64 %m, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1106
  %_21.0.i.i.i.i = mul i64 %_9, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %m, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb33
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1110
; call __rustc::__rust_alloc
  %6 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #20, !noalias !1110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb33
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb33 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #22
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i66, !noalias !1106

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_9, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %6, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %m, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1106
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %8, align 8, !noalias !1106
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  br label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i63
  %ptr.sroa.0.019.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i63 ]
  %iter.sroa.0.018.i.i = phi i64 [ 1, %bb1.i.i ], [ %_28.i.i, %bb3.i3.i63 ]
  %storemerge17.i.i = phi i64 [ 0, %bb1.i.i ], [ %12, %bb3.i3.i63 ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1116
; call __rustc::__rust_alloc
  %10 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i.i.i.i, label %bb3.i3.i63

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1126

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i63:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %10, ptr nonnull readonly align 4 %2, i64 %_21.0.i.i.i, i1 false), !noalias !1127
  %_28.i.i = add nuw i64 %iter.sroa.0.018.i.i, 1
  store i64 %_8, ptr %ptr.sroa.0.019.i.i, align 8, !noalias !1126
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 8
  store ptr %10, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1126
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 16
  store i64 %_8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1126
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 24
  %12 = add nuw nsw i64 %storemerge17.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.018.i.i, %m
  br i1 %exitcond.not.i.i, label %bb34, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge17.i.i, ptr %9, align 8, !alias.scope !1113, !noalias !1128
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1133
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1106
  br label %bb30

bb2.i.i.i3.i.i66:                                 ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1142
  br label %bb30

bb34:                                             ; preds = %bb3.i3.i63
  store i64 %_8, ptr %_15.i.i, align 8, !noalias !1151
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 32
  store ptr %2, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1151
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 40
  store i64 %_8, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1151
  store i64 %_9, ptr %9, align 8, !alias.scope !1113, !noalias !1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1106
  %15 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_248 = load ptr, ptr %15, align 8, !nonnull !6
  %_255 = getelementptr inbounds nuw i8, ptr %_248, i64 %n
  %16 = getelementptr inbounds nuw i8, ptr %_54, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %_269 = load ptr, ptr %17, align 8, !nonnull !6
  %_276 = getelementptr inbounds nuw i8, ptr %_269, i64 %m
  %18 = getelementptr inbounds nuw i8, ptr %_58, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %_18.i.i166 = getelementptr inbounds nuw i8, ptr %_269, i64 1
  %_7.i10.i172 = icmp samesign ne i64 %m, 1
  %_18.i12.i173 = getelementptr inbounds nuw i8, ptr %_269, i64 2
  %_7.i17.i182 = icmp samesign ne i64 %m, 2
  %_18.i19.i183 = getelementptr inbounds nuw i8, ptr %_269, i64 3
  %_7.i24.i192 = icmp samesign ne i64 %m, 3
  %_18.i.i208 = getelementptr inbounds nuw i8, ptr %_248, i64 1
  %_7.i10.i214 = icmp samesign ne i64 %n, 1
  %_18.i12.i215 = getelementptr inbounds nuw i8, ptr %_248, i64 2
  %_7.i17.i224 = icmp samesign ne i64 %n, 2
  %_18.i19.i225 = getelementptr inbounds nuw i8, ptr %_248, i64 3
  %_7.i24.i234 = icmp samesign ne i64 %n, 3
  %_325 = load i64, ptr %19, align 8
  %_326 = load ptr, ptr %20, align 8, !nonnull !6
  %_227.not = icmp eq i64 %_325, 0
  %22 = getelementptr inbounds nuw i8, ptr %_326, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %_326, i64 16
  %_205.not = icmp eq i64 %_325, 0
  %24 = getelementptr inbounds nuw i8, ptr %_326, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %_326, i64 16
  %_144 = load i64, ptr %19, align 8
  %_147.not = icmp eq i64 %_144, 0
  %_145 = load ptr, ptr %20, align 8, !nonnull !6
  %26 = getelementptr inbounds nuw i8, ptr %_145, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %_145, i64 8
  br label %bb7.preheader

bb3.loopexit:                                     ; preds = %bb24, %bb7.preheader
  %_82 = icmp samesign ult i64 %iter.sroa.0.1366, %m
  %28 = zext i1 %_82 to i64
  %iter.sroa.0.1 = add nuw nsw i64 %iter.sroa.0.1366, %28
  br i1 %_82, label %bb7.preheader, label %bb6

bb7.preheader:                                    ; preds = %bb34, %bb3.loopexit
  %iter.sroa.0.1366 = phi i64 [ 1, %bb34 ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %iter.sroa.0.0365 = phi i64 [ 0, %bb34 ], [ %iter.sroa.0.1366, %bb3.loopexit ]
  %_91363 = icmp samesign ult i64 %iter.sroa.0.0365, %n
  br i1 %_91363, label %bb8.lr.ph, label %bb3.loopexit

bb8.lr.ph:                                        ; preds = %bb7.preheader
  %_16 = icmp eq i64 %iter.sroa.0.0365, 0
  %_67 = add nsw i64 %iter.sroa.0.0365, -1
  %_328 = icmp ult i64 %iter.sroa.0.0365, %_325
  %_72 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_326, i64 %iter.sroa.0.0365
  %29 = getelementptr inbounds nuw i8, ptr %_72, i64 8
  %30 = getelementptr inbounds nuw i8, ptr %_72, i64 16
  %_296 = icmp ult i64 %iter.sroa.0.0365, %_325
  %_62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_326, i64 %iter.sroa.0.0365
  %31 = getelementptr inbounds nuw i8, ptr %_62, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %_62, i64 16
  %_306 = icmp ult i64 %_67, %_325
  %_66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_326, i64 %_67
  %33 = getelementptr inbounds nuw i8, ptr %_66, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %_66, i64 8
  br label %bb8

bb6:                                              ; preds = %bb3.loopexit
  %_78 = add nsw i64 %m, -1
  %_87 = load i64, ptr %19, align 8, !noundef !6
  %_90 = icmp ult i64 %_78, %_87
  br i1 %_90, label %bb38, label %panic23.invoke

bb38:                                             ; preds = %bb6
  %_88 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_77 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_88, i64 %_78
  %_79 = add nsw i64 %n, -1
  %35 = getelementptr inbounds nuw i8, ptr %_77, i64 16
  %_347 = load i64, ptr %35, align 8, !noundef !6
  %_350 = icmp ult i64 %_79, %_347
  br i1 %_350, label %bb125, label %panic23.invoke

cleanup2:                                         ; preds = %panic23.invoke
  %36 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73511be667bcb62eE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #24
  br label %bb30

bb125:                                            ; preds = %bb38
  %37 = getelementptr inbounds nuw i8, ptr %_77, i64 8
  %_348 = load ptr, ptr %37, align 8, !nonnull !6, !noundef !6
  %_76 = getelementptr inbounds nuw i32, ptr %_348, i64 %_79
  %38 = load i32, ptr %_76, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb125, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %39, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i" ], [ 0, %bb125 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_88, i64 %_3.sroa.0.012.i.i.i
  %39 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1176, !noalias !1179, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %40 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %41 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %41, align 8, !alias.scope !1176, !noalias !1179, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %40, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1183
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %39, %_87
  br i1 %_7.i.i.i, label %bb4.i68, label %bb5.i.i.i

bb4.i68:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12874bdd66eb9162E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1193, !noalias !1196, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb25, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i68
  %42 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_88, i64 noundef %42, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1198
  br label %bb25

bb25:                                             ; preds = %bb2.i.i.i3.i, %bb4.i68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  br label %bb26

bb26:                                             ; preds = %start, %bb25
  %_0.sroa.0.0 = phi i32 [ %38, %bb25 ], [ 1, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %self1.i.i.i.i1.i.i69 = load i64, ptr %b, align 8, !range !22, !alias.scope !1214, !noalias !1217, !noundef !6
  %_6.i.i.i.i2.i.i70 = icmp eq i64 %self1.i.i.i.i1.i.i69, 0
  br i1 %_6.i.i.i.i2.i.i70, label %bb27, label %bb2.i.i.i3.i.i71

bb2.i.i.i3.i.i71:                                 ; preds = %bb26
  %43 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %self3.i.i.i.i4.i.i72 = load ptr, ptr %43, align 8, !alias.scope !1214, !noalias !1217, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i72, i64 noundef %self1.i.i.i.i1.i.i69, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1219
  br label %bb27

bb8:                                              ; preds = %bb8.lr.ph, %bb24
  %iter1.sroa.0.0364 = phi i64 [ %iter.sroa.0.0365, %bb8.lr.ph ], [ %44, %bb24 ]
  %44 = add nuw i64 %iter1.sroa.0.0364, 1
  br i1 %_16, label %bb10, label %bb20

bb20:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_54)
  store ptr %_248, ptr %_54, align 8
  store ptr %_255, ptr %16, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_259 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_54, i64 noundef %iter1.sroa.0.0364)
  %.not = icmp eq i64 %_259, 0
  br i1 %.not, label %bb97, label %bb95

bb10:                                             ; preds = %bb8
  %_17 = icmp eq i64 %iter1.sroa.0.0364, 0
  br i1 %_17, label %bb45, label %bb15

bb97:                                             ; preds = %bb20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %ptr.i.i = load ptr, ptr %_54, align 8, !alias.scope !1223, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %16, align 8, !alias.scope !1223, !nonnull !6, !noundef !6
  %_7.i.i74.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i74.not, label %bb95, label %bb14.i75

bb14.i75:                                         ; preds = %bb97
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1220, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i77, label %bb4.i76

bb4.i76:                                          ; preds = %bb14.i75
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1220, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %45 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb95

bb3.i77:                                          ; preds = %bb14.i75
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb95

bb6.i:                                            ; preds = %bb4.i76
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1220, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %46 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb95

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1220, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %47 = or disjoint i32 %_27.i, %_25.i
  br label %bb95

bb95:                                             ; preds = %bb97, %bb4.i76, %bb3.i77, %bb6.i, %bb8.i, %bb20
  %_52.sroa.0.1 = phi i32 [ 1114112, %bb20 ], [ %_7.i, %bb3.i77 ], [ %47, %bb8.i ], [ %46, %bb6.i ], [ %45, %bb4.i76 ], [ 1114112, %bb97 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_58)
  store ptr %_269, ptr %_58, align 8
  store ptr %_276, ptr %18, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_280 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_58, i64 noundef %iter.sroa.0.0365)
  %.not44 = icmp eq i64 %_280, 0
  br i1 %.not44, label %bb105, label %bb103.thread

bb105:                                            ; preds = %bb95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %ptr.i.i78 = load ptr, ptr %_58, align 8, !alias.scope !1229, !nonnull !6, !noundef !6
  %end_or_len.i.i79 = load ptr, ptr %18, align 8, !alias.scope !1229, !nonnull !6, !noundef !6
  %_7.i.i80.not = icmp eq ptr %ptr.i.i78, %end_or_len.i.i79
  br i1 %_7.i.i80.not, label %bb103.thread435, label %bb14.i81

bb14.i81:                                         ; preds = %bb105
  %x.i83 = load i8, ptr %ptr.i.i78, align 1, !noalias !1226, !noundef !6
  %_6.i84 = icmp sgt i8 %x.i83, -1
  br i1 %_6.i84, label %bb3.i117, label %bb4.i85

bb4.i85:                                          ; preds = %bb14.i81
  %_18.i.i82 = getelementptr inbounds nuw i8, ptr %ptr.i.i78, i64 1
  %_30.i86 = and i8 %x.i83, 31
  %init.i87 = zext nneg i8 %_30.i86 to i32
  %_7.i10.i88 = icmp ne ptr %_18.i.i82, %end_or_len.i.i79
  tail call void @llvm.assume(i1 %_7.i10.i88)
  %y.i90 = load i8, ptr %_18.i.i82, align 1, !noalias !1226, !noundef !6
  %_34.i91 = shl nuw nsw i32 %init.i87, 6
  %_36.i92 = and i8 %y.i90, 63
  %_35.i93 = zext nneg i8 %_36.i92 to i32
  %48 = or disjoint i32 %_34.i91, %_35.i93
  %_13.i94 = icmp samesign ugt i8 %x.i83, -33
  br i1 %_13.i94, label %bb6.i97, label %bb103

bb3.i117:                                         ; preds = %bb14.i81
  %_7.i118 = zext nneg i8 %x.i83 to i32
  br label %bb103

bb6.i97:                                          ; preds = %bb4.i85
  %_18.i12.i89 = getelementptr inbounds nuw i8, ptr %ptr.i.i78, i64 2
  %_7.i17.i98 = icmp ne ptr %_18.i12.i89, %end_or_len.i.i79
  tail call void @llvm.assume(i1 %_7.i17.i98)
  %z.i100 = load i8, ptr %_18.i12.i89, align 1, !noalias !1226, !noundef !6
  %_40.i101 = shl nuw nsw i32 %_35.i93, 6
  %_42.i102 = and i8 %z.i100, 63
  %_41.i103 = zext nneg i8 %_42.i102 to i32
  %y_z.i104 = or disjoint i32 %_40.i101, %_41.i103
  %_20.i105 = shl nuw nsw i32 %init.i87, 12
  %49 = or disjoint i32 %y_z.i104, %_20.i105
  %_21.i106 = icmp samesign ugt i8 %x.i83, -17
  br i1 %_21.i106, label %bb8.i107, label %bb103

bb8.i107:                                         ; preds = %bb6.i97
  %_18.i19.i99 = getelementptr inbounds nuw i8, ptr %ptr.i.i78, i64 3
  %_7.i24.i108 = icmp ne ptr %_18.i19.i99, %end_or_len.i.i79
  tail call void @llvm.assume(i1 %_7.i24.i108)
  %w.i110 = load i8, ptr %_18.i19.i99, align 1, !noalias !1226, !noundef !6
  %_26.i111 = shl nuw nsw i32 %init.i87, 18
  %_25.i112 = and i32 %_26.i111, 1835008
  %_46.i113 = shl nuw nsw i32 %y_z.i104, 6
  %_48.i114 = and i8 %w.i110, 63
  %_47.i115 = zext nneg i8 %_48.i114 to i32
  %_27.i116 = or disjoint i32 %_46.i113, %_47.i115
  %50 = or disjoint i32 %_27.i116, %_25.i112
  br label %bb103

bb103:                                            ; preds = %bb4.i85, %bb3.i117, %bb6.i97, %bb8.i107
  %spec.select58 = phi i32 [ %_7.i118, %bb3.i117 ], [ %50, %bb8.i107 ], [ %49, %bb6.i97 ], [ %48, %bb4.i85 ]
  %.not45 = icmp eq i32 %_52.sroa.0.1, 1114112
  br i1 %.not45, label %bb110, label %bb111

bb103.thread435:                                  ; preds = %bb105
  %.not45437 = icmp eq i32 %_52.sroa.0.1, 1114112
  br i1 %.not45437, label %bb21, label %bb22

bb103.thread:                                     ; preds = %bb95
  %.not45300 = icmp eq i32 %_52.sroa.0.1, 1114112
  br i1 %.not45300, label %bb21, label %bb22

bb111:                                            ; preds = %bb103
  %.not46 = icmp ne i32 %spec.select58, 1114112
  %51 = icmp eq i32 %_52.sroa.0.1, %spec.select58
  %or.cond = select i1 %.not46, i1 %51, i1 false
  br i1 %or.cond, label %bb21, label %bb22

bb110:                                            ; preds = %bb103
  %52 = icmp eq i32 %spec.select58, 1114112
  br i1 %52, label %bb21, label %bb22

bb22:                                             ; preds = %bb103.thread435, %bb103.thread, %bb111, %bb110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_58)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_54)
  br i1 %_328, label %bb121, label %panic23.invoke

bb21:                                             ; preds = %bb103.thread435, %bb111, %bb103.thread, %bb110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_58)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_54)
  br i1 %_296, label %bb115, label %panic23.invoke

bb121:                                            ; preds = %bb22
  %_73 = add nsw i64 %iter1.sroa.0.0364, -1
  %_331 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_330 = load i64, ptr %30, align 8, !noundef !6
  %_333 = icmp ult i64 %_73, %_330
  br i1 %_333, label %bb122, label %panic23.invoke

bb122:                                            ; preds = %bb121
  %_345 = icmp ult i64 %iter1.sroa.0.0364, %_330
  br i1 %_345, label %bb124, label %panic23.invoke

bb124:                                            ; preds = %bb122
  %_71 = getelementptr inbounds nuw i32, ptr %_331, i64 %_73
  %_70 = load i32, ptr %_71, align 4, !noundef !6
  %_74 = getelementptr inbounds nuw i32, ptr %_331, i64 %iter1.sroa.0.0364
  store i32 %_70, ptr %_74, align 4
  br label %bb24

bb115:                                            ; preds = %bb21
  %_63 = add nsw i64 %iter1.sroa.0.0364, -1
  %_299 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %_298 = load i64, ptr %32, align 8, !noundef !6
  %_301 = icmp ult i64 %_63, %_298
  br i1 %_301, label %bb116, label %panic23.invoke

bb116:                                            ; preds = %bb115
  %_61 = getelementptr inbounds nuw i32, ptr %_299, i64 %_63
  %_60 = load i32, ptr %_61, align 4, !noundef !6
  br i1 %_306, label %bb117, label %panic23.invoke

bb117:                                            ; preds = %bb116
  %_308 = load i64, ptr %33, align 8, !noundef !6
  %_311 = icmp ult i64 %_63, %_308
  br i1 %_311, label %bb118, label %panic23.invoke

bb118:                                            ; preds = %bb117
  %_323 = icmp ult i64 %iter1.sroa.0.0364, %_298
  br i1 %_323, label %bb120, label %panic23.invoke

bb120:                                            ; preds = %bb118
  %_309 = load ptr, ptr %34, align 8, !nonnull !6, !noundef !6
  %_65 = getelementptr inbounds nuw i32, ptr %_309, i64 %_63
  %_64 = load i32, ptr %_65, align 4, !noundef !6
  %_68 = getelementptr inbounds nuw i32, ptr %_299, i64 %iter1.sroa.0.0364
  %53 = add i32 %_64, %_60
  store i32 %53, ptr %_68, align 4
  br label %bb24

bb24:                                             ; preds = %bb93, %bb89, %bb124, %bb120, %bb64
  %exitcond.not = icmp eq i64 %44, %n
  br i1 %exitcond.not, label %bb3.loopexit, label %bb8

bb15:                                             ; preds = %bb10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %_248, ptr %_33, align 8
  store ptr %_255, ptr %21, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_168 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %iter1.sroa.0.0364)
  %.not47 = icmp eq i64 %_168, 0
  br i1 %.not47, label %bb68, label %bb76

bb68:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %ptr.i.i120 = load ptr, ptr %_33, align 8, !alias.scope !1235, !nonnull !6, !noundef !6
  %end_or_len.i.i121 = load ptr, ptr %21, align 8, !alias.scope !1235, !nonnull !6, !noundef !6
  %_7.i.i122.not = icmp eq ptr %ptr.i.i120, %end_or_len.i.i121
  br i1 %_7.i.i122.not, label %bb76, label %bb14.i123

bb14.i123:                                        ; preds = %bb68
  %x.i125 = load i8, ptr %ptr.i.i120, align 1, !noalias !1232, !noundef !6
  %_6.i126 = icmp sgt i8 %x.i125, -1
  br i1 %_6.i126, label %bb3.i159, label %bb4.i127

bb4.i127:                                         ; preds = %bb14.i123
  %_18.i.i124 = getelementptr inbounds nuw i8, ptr %ptr.i.i120, i64 1
  %_30.i128 = and i8 %x.i125, 31
  %init.i129 = zext nneg i8 %_30.i128 to i32
  %_7.i10.i130 = icmp ne ptr %_18.i.i124, %end_or_len.i.i121
  tail call void @llvm.assume(i1 %_7.i10.i130)
  %y.i132 = load i8, ptr %_18.i.i124, align 1, !noalias !1232, !noundef !6
  %_34.i133 = shl nuw nsw i32 %init.i129, 6
  %_36.i134 = and i8 %y.i132, 63
  %_35.i135 = zext nneg i8 %_36.i134 to i32
  %54 = or disjoint i32 %_34.i133, %_35.i135
  %_13.i136 = icmp samesign ugt i8 %x.i125, -33
  br i1 %_13.i136, label %bb6.i139, label %bb76

bb3.i159:                                         ; preds = %bb14.i123
  %_7.i160 = zext nneg i8 %x.i125 to i32
  br label %bb76

bb6.i139:                                         ; preds = %bb4.i127
  %_18.i12.i131 = getelementptr inbounds nuw i8, ptr %ptr.i.i120, i64 2
  %_7.i17.i140 = icmp ne ptr %_18.i12.i131, %end_or_len.i.i121
  tail call void @llvm.assume(i1 %_7.i17.i140)
  %z.i142 = load i8, ptr %_18.i12.i131, align 1, !noalias !1232, !noundef !6
  %_40.i143 = shl nuw nsw i32 %_35.i135, 6
  %_42.i144 = and i8 %z.i142, 63
  %_41.i145 = zext nneg i8 %_42.i144 to i32
  %y_z.i146 = or disjoint i32 %_40.i143, %_41.i145
  %_20.i147 = shl nuw nsw i32 %init.i129, 12
  %55 = or disjoint i32 %y_z.i146, %_20.i147
  %_21.i148 = icmp samesign ugt i8 %x.i125, -17
  br i1 %_21.i148, label %bb8.i149, label %bb76

bb8.i149:                                         ; preds = %bb6.i139
  %_18.i19.i141 = getelementptr inbounds nuw i8, ptr %ptr.i.i120, i64 3
  %_7.i24.i150 = icmp ne ptr %_18.i19.i141, %end_or_len.i.i121
  tail call void @llvm.assume(i1 %_7.i24.i150)
  %w.i152 = load i8, ptr %_18.i19.i141, align 1, !noalias !1232, !noundef !6
  %_26.i153 = shl nuw nsw i32 %init.i129, 18
  %_25.i154 = and i32 %_26.i153, 1835008
  %_46.i155 = shl nuw nsw i32 %y_z.i146, 6
  %_48.i156 = and i8 %w.i152, 63
  %_47.i157 = zext nneg i8 %_48.i156 to i32
  %_27.i158 = or disjoint i32 %_46.i155, %_47.i157
  %56 = or disjoint i32 %_27.i158, %_25.i154
  br label %bb76

bb76:                                             ; preds = %bb68, %bb4.i127, %bb3.i159, %bb6.i139, %bb8.i149, %bb15
  %_31.sroa.0.1 = phi i32 [ 1114112, %bb15 ], [ %_7.i160, %bb3.i159 ], [ %56, %bb8.i149 ], [ %55, %bb6.i139 ], [ %54, %bb4.i127 ], [ 1114112, %bb68 ]
  %x.i167 = load i8, ptr %_269, align 1, !noalias !1238, !noundef !6
  %_6.i168 = icmp sgt i8 %x.i167, -1
  br i1 %_6.i168, label %bb3.i201, label %bb4.i169

bb4.i169:                                         ; preds = %bb76
  %_30.i170 = and i8 %x.i167, 31
  %init.i171 = zext nneg i8 %_30.i170 to i32
  tail call void @llvm.assume(i1 %_7.i10.i172)
  %y.i174 = load i8, ptr %_18.i.i166, align 1, !noalias !1238, !noundef !6
  %_34.i175 = shl nuw nsw i32 %init.i171, 6
  %_36.i176 = and i8 %y.i174, 63
  %_35.i177 = zext nneg i8 %_36.i176 to i32
  %57 = or disjoint i32 %_34.i175, %_35.i177
  %_13.i178 = icmp samesign ugt i8 %x.i167, -33
  br i1 %_13.i178, label %bb6.i181, label %bb74

bb3.i201:                                         ; preds = %bb76
  %_7.i202 = zext nneg i8 %x.i167 to i32
  br label %bb74

bb6.i181:                                         ; preds = %bb4.i169
  tail call void @llvm.assume(i1 %_7.i17.i182)
  %z.i184 = load i8, ptr %_18.i12.i173, align 1, !noalias !1238, !noundef !6
  %_40.i185 = shl nuw nsw i32 %_35.i177, 6
  %_42.i186 = and i8 %z.i184, 63
  %_41.i187 = zext nneg i8 %_42.i186 to i32
  %y_z.i188 = or disjoint i32 %_40.i185, %_41.i187
  %_20.i189 = shl nuw nsw i32 %init.i171, 12
  %58 = or disjoint i32 %y_z.i188, %_20.i189
  %_21.i190 = icmp samesign ugt i8 %x.i167, -17
  br i1 %_21.i190, label %bb8.i191, label %bb74

bb8.i191:                                         ; preds = %bb6.i181
  tail call void @llvm.assume(i1 %_7.i24.i192)
  %w.i194 = load i8, ptr %_18.i19.i183, align 1, !noalias !1238, !noundef !6
  %_26.i195 = shl nuw nsw i32 %init.i171, 18
  %_25.i196 = and i32 %_26.i195, 1835008
  %_46.i197 = shl nuw nsw i32 %y_z.i188, 6
  %_48.i198 = and i8 %w.i194, 63
  %_47.i199 = zext nneg i8 %_48.i198 to i32
  %_27.i200 = or disjoint i32 %_46.i197, %_47.i199
  %59 = or disjoint i32 %_27.i200, %_25.i196
  br label %bb74

bb74:                                             ; preds = %bb4.i169, %bb3.i201, %bb6.i181, %bb8.i191
  %_0.sroa.4.0.i179 = phi i32 [ %_7.i202, %bb3.i201 ], [ %59, %bb8.i191 ], [ %58, %bb6.i181 ], [ %57, %bb4.i169 ]
  %.not49 = icmp eq i32 %_31.sroa.0.1, 1114112
  br i1 %.not49, label %bb81, label %bb82

bb82:                                             ; preds = %bb74
  %.not50 = icmp ne i32 %_0.sroa.4.0.i179, 1114112
  %60 = icmp eq i32 %_31.sroa.0.1, %_0.sroa.4.0.i179
  %or.cond306 = select i1 %.not50, i1 %60, i1 false
  br i1 %or.cond306, label %bb16, label %bb17

bb81:                                             ; preds = %bb74
  %61 = icmp eq i32 %_0.sroa.4.0.i179, 1114112
  br i1 %61, label %bb16, label %bb17

bb17:                                             ; preds = %bb82, %bb81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br i1 %_227.not, label %panic23.invoke, label %bb90

bb16:                                             ; preds = %bb82, %bb81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br i1 %_205.not, label %panic23.invoke, label %bb86

bb90:                                             ; preds = %bb17
  %_48 = add nsw i64 %iter1.sroa.0.0364, -1
  %_230 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_229 = load i64, ptr %23, align 8, !noundef !6
  %_232 = icmp ult i64 %_48, %_229
  br i1 %_232, label %bb91, label %panic23.invoke

bb91:                                             ; preds = %bb90
  %_244 = icmp ult i64 %iter1.sroa.0.0364, %_229
  br i1 %_244, label %bb93, label %panic23.invoke

bb93:                                             ; preds = %bb91
  %_46 = getelementptr inbounds nuw i32, ptr %_230, i64 %_48
  %_45 = load i32, ptr %_46, align 4, !noundef !6
  %_49 = getelementptr inbounds nuw i32, ptr %_230, i64 %iter1.sroa.0.0364
  store i32 %_45, ptr %_49, align 4
  br label %bb24

bb86:                                             ; preds = %bb16
  %_42 = add nsw i64 %iter1.sroa.0.0364, -1
  %_208 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_207 = load i64, ptr %25, align 8, !noundef !6
  %_210 = icmp ult i64 %_42, %_207
  br i1 %_210, label %bb87, label %panic23.invoke

bb87:                                             ; preds = %bb86
  %_222 = icmp ult i64 %iter1.sroa.0.0364, %_207
  br i1 %_222, label %bb89, label %panic23.invoke

bb89:                                             ; preds = %bb87
  %_40 = getelementptr inbounds nuw i32, ptr %_208, i64 %_42
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  %_43 = getelementptr inbounds nuw i32, ptr %_208, i64 %iter1.sroa.0.0364
  %62 = add i32 %_39, 1
  store i32 %62, ptr %_43, align 4
  br label %bb24

bb45:                                             ; preds = %bb10
  %x.i209 = load i8, ptr %_248, align 1, !noalias !1241, !noundef !6
  %_6.i210 = icmp sgt i8 %x.i209, -1
  br i1 %_6.i210, label %bb3.i243, label %bb4.i211

bb4.i211:                                         ; preds = %bb45
  %_30.i212 = and i8 %x.i209, 31
  %init.i213 = zext nneg i8 %_30.i212 to i32
  tail call void @llvm.assume(i1 %_7.i10.i214)
  %y.i216 = load i8, ptr %_18.i.i208, align 1, !noalias !1241, !noundef !6
  %_34.i217 = shl nuw nsw i32 %init.i213, 6
  %_36.i218 = and i8 %y.i216, 63
  %_35.i219 = zext nneg i8 %_36.i218 to i32
  %63 = or disjoint i32 %_34.i217, %_35.i219
  %_13.i220 = icmp samesign ugt i8 %x.i209, -33
  br i1 %_13.i220, label %bb6.i223, label %bb53

bb3.i243:                                         ; preds = %bb45
  %_7.i244 = zext nneg i8 %x.i209 to i32
  br label %bb53

bb6.i223:                                         ; preds = %bb4.i211
  tail call void @llvm.assume(i1 %_7.i17.i224)
  %z.i226 = load i8, ptr %_18.i12.i215, align 1, !noalias !1241, !noundef !6
  %_40.i227 = shl nuw nsw i32 %_35.i219, 6
  %_42.i228 = and i8 %z.i226, 63
  %_41.i229 = zext nneg i8 %_42.i228 to i32
  %y_z.i230 = or disjoint i32 %_40.i227, %_41.i229
  %_20.i231 = shl nuw nsw i32 %init.i213, 12
  %64 = or disjoint i32 %y_z.i230, %_20.i231
  %_21.i232 = icmp samesign ugt i8 %x.i209, -17
  br i1 %_21.i232, label %bb8.i233, label %bb53

bb8.i233:                                         ; preds = %bb6.i223
  tail call void @llvm.assume(i1 %_7.i24.i234)
  %w.i236 = load i8, ptr %_18.i19.i225, align 1, !noalias !1241, !noundef !6
  %_26.i237 = shl nuw nsw i32 %init.i213, 18
  %_25.i238 = and i32 %_26.i237, 1835008
  %_46.i239 = shl nuw nsw i32 %y_z.i230, 6
  %_48.i240 = and i8 %w.i236, 63
  %_47.i241 = zext nneg i8 %_48.i240 to i32
  %_27.i242 = or disjoint i32 %_46.i239, %_47.i241
  %65 = or disjoint i32 %_27.i242, %_25.i238
  br label %bb53

bb53:                                             ; preds = %bb4.i211, %bb3.i243, %bb6.i223, %bb8.i233
  %_0.sroa.4.0.i221 = phi i32 [ %_7.i244, %bb3.i243 ], [ %65, %bb8.i233 ], [ %64, %bb6.i223 ], [ %63, %bb4.i211 ]
  %x.i251 = load i8, ptr %_269, align 1, !noalias !1244, !noundef !6
  %_6.i252 = icmp sgt i8 %x.i251, -1
  br i1 %_6.i252, label %bb3.i285, label %bb4.i253

bb4.i253:                                         ; preds = %bb53
  %_30.i254 = and i8 %x.i251, 31
  %init.i255 = zext nneg i8 %_30.i254 to i32
  tail call void @llvm.assume(i1 %_7.i10.i172)
  %y.i258 = load i8, ptr %_18.i.i166, align 1, !noalias !1244, !noundef !6
  %_34.i259 = shl nuw nsw i32 %init.i255, 6
  %_36.i260 = and i8 %y.i258, 63
  %_35.i261 = zext nneg i8 %_36.i260 to i32
  %66 = or disjoint i32 %_34.i259, %_35.i261
  %_13.i262 = icmp samesign ugt i8 %x.i251, -33
  br i1 %_13.i262, label %bb6.i265, label %bb51

bb3.i285:                                         ; preds = %bb53
  %_7.i286 = zext nneg i8 %x.i251 to i32
  br label %bb51

bb6.i265:                                         ; preds = %bb4.i253
  tail call void @llvm.assume(i1 %_7.i17.i182)
  %z.i268 = load i8, ptr %_18.i12.i173, align 1, !noalias !1244, !noundef !6
  %_40.i269 = shl nuw nsw i32 %_35.i261, 6
  %_42.i270 = and i8 %z.i268, 63
  %_41.i271 = zext nneg i8 %_42.i270 to i32
  %y_z.i272 = or disjoint i32 %_40.i269, %_41.i271
  %_20.i273 = shl nuw nsw i32 %init.i255, 12
  %67 = or disjoint i32 %y_z.i272, %_20.i273
  %_21.i274 = icmp samesign ugt i8 %x.i251, -17
  br i1 %_21.i274, label %bb8.i275, label %bb51

bb8.i275:                                         ; preds = %bb6.i265
  tail call void @llvm.assume(i1 %_7.i24.i192)
  %w.i278 = load i8, ptr %_18.i19.i183, align 1, !noalias !1244, !noundef !6
  %_26.i279 = shl nuw nsw i32 %init.i255, 18
  %_25.i280 = and i32 %_26.i279, 1835008
  %_46.i281 = shl nuw nsw i32 %y_z.i272, 6
  %_48.i282 = and i8 %w.i278, 63
  %_47.i283 = zext nneg i8 %_48.i282 to i32
  %_27.i284 = or disjoint i32 %_46.i281, %_47.i283
  %68 = or disjoint i32 %_27.i284, %_25.i280
  br label %bb51

bb51:                                             ; preds = %bb4.i253, %bb3.i285, %bb6.i265, %bb8.i275
  %_0.sroa.4.0.i263 = phi i32 [ %_7.i286, %bb3.i285 ], [ %68, %bb8.i275 ], [ %67, %bb6.i265 ], [ %66, %bb4.i253 ]
  %.not53 = icmp eq i32 %_0.sroa.4.0.i221, 1114112
  br i1 %.not53, label %bb58, label %bb59

bb59:                                             ; preds = %bb51
  %.not54 = icmp ne i32 %_0.sroa.4.0.i263, 1114112
  %69 = icmp eq i32 %_0.sroa.4.0.i221, %_0.sroa.4.0.i263
  %or.cond307 = select i1 %.not54, i1 %69, i1 false
  br i1 %or.cond307, label %bb12, label %bb14

bb58:                                             ; preds = %bb51
  %70 = icmp eq i32 %_0.sroa.4.0.i263, 1114112
  br i1 %70, label %bb12, label %bb14

bb12:                                             ; preds = %bb59, %bb58
  br label %bb14

bb14:                                             ; preds = %bb58, %bb59, %bb12
  %_18.sroa.0.0 = phi i32 [ 1, %bb12 ], [ 0, %bb59 ], [ 0, %bb58 ]
  br i1 %_147.not, label %panic23.invoke, label %bb63

bb63:                                             ; preds = %bb14
  %_150 = load i64, ptr %26, align 8, !noundef !6
  %_153.not = icmp eq i64 %_150, 0
  br i1 %_153.not, label %panic23.invoke, label %bb64

bb64:                                             ; preds = %bb63
  %_151 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  store i32 %_18.sroa.0.0, ptr %_151, align 4
  br label %bb24

panic23.invoke:                                   ; preds = %bb63, %bb14, %bb87, %bb86, %bb16, %bb91, %bb90, %bb17, %bb118, %bb117, %bb116, %bb115, %bb21, %bb122, %bb121, %bb22, %bb6, %bb38
  %71 = phi i64 [ %_79, %bb38 ], [ %_78, %bb6 ], [ %iter.sroa.0.0365, %bb22 ], [ %_73, %bb121 ], [ %iter1.sroa.0.0364, %bb122 ], [ %iter.sroa.0.0365, %bb21 ], [ %_63, %bb115 ], [ %_67, %bb116 ], [ %_63, %bb117 ], [ %iter1.sroa.0.0364, %bb118 ], [ 0, %bb17 ], [ %_48, %bb90 ], [ %iter1.sroa.0.0364, %bb91 ], [ 0, %bb16 ], [ %_42, %bb86 ], [ %iter1.sroa.0.0364, %bb87 ], [ 0, %bb14 ], [ 0, %bb63 ]
  %72 = phi i64 [ %_347, %bb38 ], [ %_87, %bb6 ], [ %_325, %bb22 ], [ %_330, %bb121 ], [ %_330, %bb122 ], [ %_325, %bb21 ], [ %_298, %bb115 ], [ %_325, %bb116 ], [ %_308, %bb117 ], [ %_298, %bb118 ], [ 0, %bb17 ], [ %_229, %bb90 ], [ %_229, %bb91 ], [ 0, %bb16 ], [ %_207, %bb86 ], [ %_207, %bb87 ], [ 0, %bb14 ], [ 0, %bb63 ]
  %73 = phi ptr [ @alloc_1da6aa557ce0707293e833e02c8c2da9, %bb38 ], [ @alloc_99467a59faf92f31a8982732e7fb49b0, %bb6 ], [ @alloc_eb5451513a65077e433bc51259a8b1fa, %bb22 ], [ @alloc_ab88827fcde2a19da873088a06ab1397, %bb121 ], [ @alloc_869e166494aaecdb6cdcc119cf8d124e, %bb122 ], [ @alloc_9969ea6e63b83f816ceb42d807ba3bd7, %bb21 ], [ @alloc_c7004dbbf85d9d6d0b4961f2c2b71e10, %bb115 ], [ @alloc_347238214f65429bfb9b8fc7c7359da9, %bb116 ], [ @alloc_f642433dfda333e16e846e7f51a590d6, %bb117 ], [ @alloc_651212460c2af58baba06db3baf4b897, %bb118 ], [ @alloc_b0c55838a1807dade4ed6ffa37eb7616, %bb17 ], [ @alloc_9a2bae5b451e09582d8754e098126a9f, %bb90 ], [ @alloc_f0d80ef845d392f51f92bbfa45557fc8, %bb91 ], [ @alloc_dce8333e95b5cbb7cb2d85dad28a73c4, %bb16 ], [ @alloc_f798e728ce611e26120c04995e730d49, %bb86 ], [ @alloc_cf85ed6d618ffad79d0e1f37d9fda9d4, %bb87 ], [ @alloc_cde4bbf51292371fbfb6375d71c47d6f, %bb14 ], [ @alloc_caa839e9b836481f4a1ae7bb01f6879a, %bb63 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %71, i64 noundef %72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %73) #22
          to label %panic23.cont unwind label %cleanup2

panic23.cont:                                     ; preds = %panic23.invoke
  unreachable

bb31:                                             ; preds = %bb2.i.i.i3.i.i, %bb30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %self1.i.i.i.i1.i.i288 = load i64, ptr %a, align 8, !range !22, !alias.scope !1262, !noalias !1265, !noundef !6
  %_6.i.i.i.i2.i.i289 = icmp eq i64 %self1.i.i.i.i1.i.i288, 0
  br i1 %_6.i.i.i.i2.i.i289, label %bb32, label %bb2.i.i.i3.i.i290

bb2.i.i.i3.i.i290:                                ; preds = %bb31
  %74 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %self3.i.i.i.i4.i.i291 = load ptr, ptr %74, align 8, !alias.scope !1262, !noalias !1265, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i291, i64 noundef %self1.i.i.i.i1.i.i288, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1267
  br label %bb32

bb27:                                             ; preds = %bb2.i.i.i3.i.i71, %bb26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %self1.i.i.i.i1.i.i293 = load i64, ptr %a, align 8, !range !22, !alias.scope !1283, !noalias !1286, !noundef !6
  %_6.i.i.i.i2.i.i294 = icmp eq i64 %self1.i.i.i.i1.i.i293, 0
  br i1 %_6.i.i.i.i2.i.i294, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E.exit297", label %bb2.i.i.i3.i.i295

bb2.i.i.i3.i.i295:                                ; preds = %bb27
  %75 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %self3.i.i.i.i4.i.i296 = load ptr, ptr %75, align 8, !alias.scope !1283, !noalias !1286, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i296, i64 noundef %self1.i.i.i.i1.i.i293, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1288
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E.exit297"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h866044ecec40a848E.exit297": ; preds = %bb27, %bb2.i.i.i3.i.i295
  ret i32 %_0.sroa.0.0

bb32:                                             ; preds = %bb2.i.i.i3.i.i290, %bb31
  resume { ptr, i32 } %.pn
}
