define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s, ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %t) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_45 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %t, i64 16
  %m = load i64, ptr %0, align 8, !noundef !6
  %_63 = icmp sgt i64 %m, -1
  tail call void @llvm.assume(i1 %_63)
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %1, align 8, !noundef !6
  %_64 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_64)
  %_5 = icmp samesign ugt i64 %m, %n
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
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
  br i1 %3, label %bb14.i, label %bb27

bb14.i:                                           ; preds = %bb3.i3.i, %bb2
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb2 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb1:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %self1.i.i.i.i1.i.i = load i64, ptr %t, align 8, !range !22, !alias.scope !1100, !noalias !1103, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb21, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb1
  %4 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1100, !noalias !1103, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1105
  br label %bb21

bb24:                                             ; preds = %cleanup4, %cleanup1.body.i, %bb2.i.i.i3.i.i60, %cleanup
  %.pn = phi { ptr, i32 } [ %20, %cleanup4 ], [ %6, %cleanup ], [ %14, %cleanup1.body.i ], [ %15, %bb2.i.i.i3.i.i60 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %self1.i.i.i.i1.i.i52 = load i64, ptr %t, align 8, !range !22, !alias.scope !1121, !noalias !1124, !noundef !6
  %_6.i.i.i.i2.i.i53 = icmp eq i64 %self1.i.i.i.i1.i.i52, 0
  br i1 %_6.i.i.i.i2.i.i53, label %bb25, label %bb2.i.i.i3.i.i54

bb2.i.i.i3.i.i54:                                 ; preds = %bb24
  %5 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %self3.i.i.i.i4.i.i55 = load ptr, ptr %5, align 8, !alias.scope !1121, !noalias !1124, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i55, i64 noundef %self1.i.i.i.i1.i.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1126
  br label %bb25

cleanup:                                          ; preds = %bb14.i
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb24

bb27:                                             ; preds = %bb3.i3.i
  %_9 = add nuw i64 %m, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1127
  %_21.0.i.i.i.i = mul i64 %_9, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %m, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb27
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1131
; call __rustc::__rust_alloc
  %7 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #20, !noalias !1131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb27
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb27 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #22
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i60, !noalias !1127

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_9, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %7, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %m, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1127
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %9, align 8, !noalias !1127
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %_2417.i.i.not = icmp eq i64 %m, 0
  br i1 %_2417.i.i.not, label %bb7.preheader, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i57
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i57 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i57 ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %13, %bb3.i3.i57 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1137
; call __rustc::__rust_alloc
  %11 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1137
  %12 = icmp eq ptr %11, null
  br i1 %12, label %bb3.i.i.i.i.i, label %bb3.i3.i57

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1147

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i57:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull readonly align 4 %2, i64 %_21.0.i.i.i, i1 false), !noalias !1148
  %_28.i.i = add nuw i64 %iter.sroa.0.019.i.i, 1
  store i64 %_8, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1147
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %11, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1147
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 %_8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1147
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %13 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %m
  br i1 %exitcond.not.i.i, label %bb2.i.lr.ph, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %10, align 8, !alias.scope !1134, !noalias !1149
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1154
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1127
  br label %bb24

bb2.i.i.i3.i.i60:                                 ; preds = %bb3.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1163
  br label %bb24

bb2.i.lr.ph:                                      ; preds = %bb3.i3.i57
  store i64 %_8, ptr %_15.i.i, align 8, !noalias !1172
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 32
  store ptr %2, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1172
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 40
  store i64 %_8, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1172
  store i64 %_9, ptr %10, align 8, !alias.scope !1134, !noalias !1173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mat, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1127
  %16 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_67 = load i64, ptr %16, align 8, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_68 = load ptr, ptr %17, align 8, !nonnull !6
  br label %bb2.i

bb7.preheader:                                    ; preds = %bb1.i.i
  store i64 %_8, ptr %_4.sroa.10.0.i.i, align 8, !noalias !1172
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  store ptr %2, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i322, align 8, !noalias !1172
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  store i64 %_8, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i323, align 8, !noalias !1172
  store i64 %_9, ptr %10, align 8, !alias.scope !1134, !noalias !1173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mat, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1127
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_79.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert319 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_80.pre = load ptr, ptr %.phi.trans.insert319, align 8
  %_82.not = icmp eq i64 %_79.pre, 0
  br i1 %_82.not, label %panic22.invoke, label %bb2.i69.preheader

bb2.i69.preheader:                                ; preds = %bb31, %bb7.preheader
  %_90328 = phi i64 [ %_79.pre, %bb7.preheader ], [ %_67, %bb31 ]
  %_91327 = phi ptr [ %_80.pre, %bb7.preheader ], [ %_68, %bb31 ]
  %18 = getelementptr inbounds nuw i8, ptr %_91327, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_91327, i64 8
  br label %bb2.i69

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb31
  %iter.sroa.0.0271 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select212, %bb31 ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0271, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select212 = add nuw nsw i64 %iter.sroa.0.0271, %_0.i4.i
  %_70 = icmp ult i64 %iter.sroa.0.0271, %_67
  br i1 %_70, label %bb30, label %panic22.invoke

cleanup4:                                         ; preds = %panic22.invoke
  %20 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #24
  br label %bb24

bb10.preheader:                                   ; preds = %bb34
  br i1 %_2417.i.i.not, label %bb12, label %bb2.i83.lr.ph

bb2.i83.lr.ph:                                    ; preds = %bb10.preheader
  %_0.i.not.i112273 = icmp eq i64 %n, 0
  %21 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %_97 = load ptr, ptr %21, align 8, !nonnull !6
  %_104 = getelementptr inbounds nuw i8, ptr %_97, i64 %m
  %22 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_118 = load ptr, ptr %23, align 8, !nonnull !6
  %_125 = getelementptr inbounds nuw i8, ptr %_118, i64 %n
  %24 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  br label %bb2.i83

bb2.i69:                                          ; preds = %bb2.i69.preheader, %bb34
  %iter1.sroa.0.0272 = phi i64 [ %spec.select213, %bb34 ], [ 0, %bb2.i69.preheader ]
  %_85 = load i64, ptr %18, align 8, !noundef !6
  %_88 = icmp ult i64 %iter1.sroa.0.0272, %_85
  br i1 %_88, label %bb34, label %panic22.invoke

bb10.loopexit:                                    ; preds = %bb18, %bb2.i83
  %_0.i.not.i82 = icmp samesign ugt i64 %spec.select215, %m
  %or.cond221 = select i1 %_0.i3.i84, i1 true, i1 %_0.i.not.i82
  br i1 %or.cond221, label %bb12, label %bb2.i83

bb2.i83:                                          ; preds = %bb2.i83.lr.ph, %bb10.loopexit
  %iter2.sroa.0.0276 = phi i64 [ 1, %bb2.i83.lr.ph ], [ %spec.select215, %bb10.loopexit ]
  %_0.i3.i84 = icmp samesign uge i64 %iter2.sroa.0.0276, %m
  %not._0.i3.i84 = xor i1 %_0.i3.i84, true
  %_0.i4.i89 = zext i1 %not._0.i3.i84 to i64
  %spec.select215 = add nuw nsw i64 %iter2.sroa.0.0276, %_0.i4.i89
  br i1 %_0.i.not.i112273, label %bb10.loopexit, label %bb2.i113.lr.ph

bb2.i113.lr.ph:                                   ; preds = %bb2.i83
  %_42 = add nsw i64 %iter2.sroa.0.0276, -1
  %_146 = icmp ult i64 %iter2.sroa.0.0276, %_90328
  %_50 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_91327, i64 %iter2.sroa.0.0276
  %25 = getelementptr inbounds nuw i8, ptr %_50, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %_50, i64 16
  %_178 = icmp ult i64 %_42, %_90328
  %_58 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_91327, i64 %_42
  %27 = getelementptr inbounds nuw i8, ptr %_58, i64 16
  %28 = getelementptr inbounds nuw i8, ptr %_58, i64 8
  br label %bb2.i113

bb12:                                             ; preds = %bb10.loopexit, %bb10.preheader
  %_93 = icmp ult i64 %m, %_90328
  br i1 %_93, label %bb36, label %panic22.invoke

bb36:                                             ; preds = %bb12
  %_62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_91327, i64 %m
  %29 = getelementptr inbounds nuw i8, ptr %_62, i64 16
  %_197 = load i64, ptr %29, align 8, !noundef !6
  %_200 = icmp ult i64 %n, %_197
  br i1 %_200, label %bb69, label %panic22.invoke

bb69:                                             ; preds = %bb36
  %30 = getelementptr inbounds nuw i8, ptr %_62, i64 8
  %_198 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_61 = getelementptr inbounds nuw i32, ptr %_198, i64 %n
  %31 = load i32, ptr %_61, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb69, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %32, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i" ], [ 0, %bb69 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_91327, i64 %_3.sroa.0.012.i.i.i
  %32 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1197, !noalias !1200, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %33 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %34 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %34, align 8, !alias.scope !1197, !noalias !1200, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1204
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %32, %_90328
  br i1 %_7.i.i.i, label %bb4.i91, label %bb5.i.i.i

bb4.i91:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %self1.i.i.i.i1.i = load i64, ptr %mat, align 8, !range !22, !alias.scope !1214, !noalias !1217, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb19, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i91
  %35 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_91327, i64 noundef %35, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1219
  br label %bb19

bb19:                                             ; preds = %bb2.i.i.i3.i, %bb4.i91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %self1.i.i.i.i1.i.i92 = load i64, ptr %t, align 8, !range !22, !alias.scope !1235, !noalias !1238, !noundef !6
  %_6.i.i.i.i2.i.i93 = icmp eq i64 %self1.i.i.i.i1.i.i92, 0
  br i1 %_6.i.i.i.i2.i.i93, label %bb20, label %bb2.i.i.i3.i.i94

bb2.i.i.i3.i.i94:                                 ; preds = %bb19
  %36 = getelementptr inbounds nuw i8, ptr %t, i64 8
  %self3.i.i.i.i4.i.i95 = load ptr, ptr %36, align 8, !alias.scope !1235, !noalias !1238, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i95, i64 noundef %self1.i.i.i.i1.i.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1240
  br label %bb20

bb25:                                             ; preds = %bb2.i.i.i3.i.i54, %bb24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %self1.i.i.i.i1.i.i97 = load i64, ptr %s, align 8, !range !22, !alias.scope !1256, !noalias !1259, !noundef !6
  %_6.i.i.i.i2.i.i98 = icmp eq i64 %self1.i.i.i.i1.i.i97, 0
  br i1 %_6.i.i.i.i2.i.i98, label %bb26, label %bb2.i.i.i3.i.i99

bb2.i.i.i3.i.i99:                                 ; preds = %bb25
  %37 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i100 = load ptr, ptr %37, align 8, !alias.scope !1256, !noalias !1259, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i100, i64 noundef %self1.i.i.i.i1.i.i97, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1261
  br label %bb26

bb20:                                             ; preds = %bb2.i.i.i3.i.i94, %bb19
  %self1.i.i.i.i1.i.i102 = load i64, ptr %s, align 8, !range !22, !alias.scope !1262, !noalias !1275, !noundef !6
  %_6.i.i.i.i2.i.i103 = icmp eq i64 %self1.i.i.i.i1.i.i102, 0
  br i1 %_6.i.i.i.i2.i.i103, label %bb22, label %bb22.sink.split

bb22.sink.split:                                  ; preds = %bb20, %bb21
  %self1.i.i.i.i1.i.i170.sink = phi i64 [ %self1.i.i.i.i1.i.i170, %bb21 ], [ %self1.i.i.i.i1.i.i102, %bb20 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb21 ], [ %31, %bb20 ]
  %38 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i173 = load ptr, ptr %38, align 8, !noalias !6, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i173, i64 noundef %self1.i.i.i.i1.i.i170.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !6
  br label %bb22

bb22:                                             ; preds = %bb22.sink.split, %bb21, %bb20
  %_0.sroa.0.0 = phi i32 [ %31, %bb20 ], [ 0, %bb21 ], [ %_0.sroa.0.0.ph, %bb22.sink.split ]
  ret i32 %_0.sroa.0.0

bb2.i113:                                         ; preds = %bb2.i113.lr.ph, %bb18
  %iter3.sroa.0.0274 = phi i64 [ 1, %bb2.i113.lr.ph ], [ %spec.select217, %bb18 ]
  %_0.i3.i114 = icmp samesign uge i64 %iter3.sroa.0.0274, %n
  %not._0.i3.i114 = xor i1 %_0.i3.i114, true
  %_0.i4.i119 = zext i1 %not._0.i3.i114 to i64
  %spec.select217 = add nuw nsw i64 %iter3.sroa.0.0274, %_0.i4.i119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %_97, ptr %_40, align 8
  store ptr %_104, ptr %22, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_108 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %_42)
  %.not = icmp eq i64 %_108, 0
  br i1 %.not, label %bb41, label %bb39

bb41:                                             ; preds = %bb2.i113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %ptr.i.i = load ptr, ptr %_40, align 8, !alias.scope !1280, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %22, align 8, !alias.scope !1280, !nonnull !6, !noundef !6
  %_7.i.i121.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i121.not, label %bb39, label %bb14.i122

bb14.i122:                                        ; preds = %bb41
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1277, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i127, label %bb4.i123

bb4.i123:                                         ; preds = %bb14.i122
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1277, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %39 = or disjoint i32 %_34.i, %_35.i
  %_13.i124 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i124, label %bb6.i126, label %bb39

bb3.i127:                                         ; preds = %bb14.i122
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb39

bb6.i126:                                         ; preds = %bb4.i123
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1277, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %40 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb39

bb8.i:                                            ; preds = %bb6.i126
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1277, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %41 = or disjoint i32 %_27.i, %_25.i
  br label %bb39

bb39:                                             ; preds = %bb41, %bb4.i123, %bb3.i127, %bb6.i126, %bb8.i, %bb2.i113
  %_38.sroa.0.1 = phi i32 [ 1114112, %bb2.i113 ], [ %_7.i, %bb3.i127 ], [ %41, %bb8.i ], [ %40, %bb6.i126 ], [ %39, %bb4.i123 ], [ 1114112, %bb41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45)
  store ptr %_118, ptr %_45, align 8
  store ptr %_125, ptr %24, align 8
  %_47 = add nsw i64 %iter3.sroa.0.0274, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_129 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_45, i64 noundef %_47)
  %.not45 = icmp eq i64 %_129, 0
  br i1 %.not45, label %bb49, label %bb47.thread

bb49:                                             ; preds = %bb39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %ptr.i.i128 = load ptr, ptr %_45, align 8, !alias.scope !1286, !nonnull !6, !noundef !6
  %end_or_len.i.i129 = load ptr, ptr %24, align 8, !alias.scope !1286, !nonnull !6, !noundef !6
  %_7.i.i130.not = icmp eq ptr %ptr.i.i128, %end_or_len.i.i129
  br i1 %_7.i.i130.not, label %bb47.thread329, label %bb14.i131

bb14.i131:                                        ; preds = %bb49
  %x.i133 = load i8, ptr %ptr.i.i128, align 1, !noalias !1283, !noundef !6
  %_6.i134 = icmp sgt i8 %x.i133, -1
  br i1 %_6.i134, label %bb3.i167, label %bb4.i135

bb4.i135:                                         ; preds = %bb14.i131
  %_18.i.i132 = getelementptr inbounds nuw i8, ptr %ptr.i.i128, i64 1
  %_30.i136 = and i8 %x.i133, 31
  %init.i137 = zext nneg i8 %_30.i136 to i32
  %_7.i10.i138 = icmp ne ptr %_18.i.i132, %end_or_len.i.i129
  tail call void @llvm.assume(i1 %_7.i10.i138)
  %y.i140 = load i8, ptr %_18.i.i132, align 1, !noalias !1283, !noundef !6
  %_34.i141 = shl nuw nsw i32 %init.i137, 6
  %_36.i142 = and i8 %y.i140, 63
  %_35.i143 = zext nneg i8 %_36.i142 to i32
  %42 = or disjoint i32 %_34.i141, %_35.i143
  %_13.i144 = icmp samesign ugt i8 %x.i133, -33
  br i1 %_13.i144, label %bb6.i147, label %bb47

bb3.i167:                                         ; preds = %bb14.i131
  %_7.i168 = zext nneg i8 %x.i133 to i32
  br label %bb47

bb6.i147:                                         ; preds = %bb4.i135
  %_18.i12.i139 = getelementptr inbounds nuw i8, ptr %ptr.i.i128, i64 2
  %_7.i17.i148 = icmp ne ptr %_18.i12.i139, %end_or_len.i.i129
  tail call void @llvm.assume(i1 %_7.i17.i148)
  %z.i150 = load i8, ptr %_18.i12.i139, align 1, !noalias !1283, !noundef !6
  %_40.i151 = shl nuw nsw i32 %_35.i143, 6
  %_42.i152 = and i8 %z.i150, 63
  %_41.i153 = zext nneg i8 %_42.i152 to i32
  %y_z.i154 = or disjoint i32 %_40.i151, %_41.i153
  %_20.i155 = shl nuw nsw i32 %init.i137, 12
  %43 = or disjoint i32 %y_z.i154, %_20.i155
  %_21.i156 = icmp samesign ugt i8 %x.i133, -17
  br i1 %_21.i156, label %bb8.i157, label %bb47

bb8.i157:                                         ; preds = %bb6.i147
  %_18.i19.i149 = getelementptr inbounds nuw i8, ptr %ptr.i.i128, i64 3
  %_7.i24.i158 = icmp ne ptr %_18.i19.i149, %end_or_len.i.i129
  tail call void @llvm.assume(i1 %_7.i24.i158)
  %w.i160 = load i8, ptr %_18.i19.i149, align 1, !noalias !1283, !noundef !6
  %_26.i161 = shl nuw nsw i32 %init.i137, 18
  %_25.i162 = and i32 %_26.i161, 1835008
  %_46.i163 = shl nuw nsw i32 %y_z.i154, 6
  %_48.i164 = and i8 %w.i160, 63
  %_47.i165 = zext nneg i8 %_48.i164 to i32
  %_27.i166 = or disjoint i32 %_46.i163, %_47.i165
  %44 = or disjoint i32 %_27.i166, %_25.i162
  br label %bb47

bb47:                                             ; preds = %bb4.i135, %bb3.i167, %bb6.i147, %bb8.i157
  %spec.select51 = phi i32 [ %_7.i168, %bb3.i167 ], [ %44, %bb8.i157 ], [ %43, %bb6.i147 ], [ %42, %bb4.i135 ]
  %.not46 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not46, label %bb54, label %bb55

bb47.thread329:                                   ; preds = %bb49
  %.not46331 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not46331, label %bb17, label %bb16

bb47.thread:                                      ; preds = %bb39
  %.not46205 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not46205, label %bb17, label %bb16

bb55:                                             ; preds = %bb47
  %.not47 = icmp ne i32 %spec.select51, 1114112
  %45 = icmp eq i32 %_38.sroa.0.1, %spec.select51
  %or.cond = select i1 %.not47, i1 %45, i1 false
  br i1 %or.cond, label %bb17, label %bb16

bb54:                                             ; preds = %bb47
  %46 = icmp eq i32 %spec.select51, 1114112
  br i1 %46, label %bb17, label %bb16

bb17:                                             ; preds = %bb47.thread329, %bb55, %bb47.thread, %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br i1 %_146, label %bb63, label %panic22.invoke

bb16:                                             ; preds = %bb47.thread329, %bb47.thread, %bb55, %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br i1 %_146, label %bb59, label %panic22.invoke

bb63:                                             ; preds = %bb17
  %_171 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_170 = load i64, ptr %26, align 8, !noundef !6
  %_173 = icmp ult i64 %_47, %_170
  br i1 %_173, label %bb64, label %panic22.invoke

bb64:                                             ; preds = %bb63
  %_54 = getelementptr inbounds nuw i32, ptr %_171, i64 %_47
  %_53 = load i32, ptr %_54, align 4, !noundef !6
  br i1 %_178, label %bb65, label %panic22.invoke

bb65:                                             ; preds = %bb64
  %_180 = load i64, ptr %27, align 8, !noundef !6
  %_183 = icmp ult i64 %_47, %_180
  br i1 %_183, label %bb66, label %panic22.invoke

bb66:                                             ; preds = %bb65
  %_195 = icmp ult i64 %iter3.sroa.0.0274, %_170
  br i1 %_195, label %bb68, label %panic22.invoke

bb68:                                             ; preds = %bb66
  %_181 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_57 = getelementptr inbounds nuw i32, ptr %_181, i64 %_47
  %_56 = load i32, ptr %_57, align 4, !noundef !6
  %_59 = getelementptr inbounds nuw i32, ptr %_171, i64 %iter3.sroa.0.0274
  %47 = add i32 %_56, %_53
  store i32 %47, ptr %_59, align 4
  br label %bb18

bb18:                                             ; preds = %bb62, %bb68
  %_0.i.not.i112 = icmp samesign ugt i64 %spec.select217, %n
  %or.cond222 = select i1 %_0.i3.i114, i1 true, i1 %_0.i.not.i112
  br i1 %or.cond222, label %bb10.loopexit, label %bb2.i113

bb59:                                             ; preds = %bb16
  %_149 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_148 = load i64, ptr %26, align 8, !noundef !6
  %_151 = icmp ult i64 %_47, %_148
  br i1 %_151, label %bb60, label %panic22.invoke

bb60:                                             ; preds = %bb59
  %_163 = icmp ult i64 %iter3.sroa.0.0274, %_148
  br i1 %_163, label %bb62, label %panic22.invoke

bb62:                                             ; preds = %bb60
  %_49 = getelementptr inbounds nuw i32, ptr %_149, i64 %_47
  %_48 = load i32, ptr %_49, align 4, !noundef !6
  %_51 = getelementptr inbounds nuw i32, ptr %_149, i64 %iter3.sroa.0.0274
  store i32 %_48, ptr %_51, align 4
  br label %bb18

bb34:                                             ; preds = %bb2.i69
  %_0.i3.i70 = icmp samesign uge i64 %iter1.sroa.0.0272, %n
  %not._0.i3.i70 = xor i1 %_0.i3.i70, true
  %_0.i4.i75 = zext i1 %not._0.i3.i70 to i64
  %spec.select213 = add nuw nsw i64 %iter1.sroa.0.0272, %_0.i4.i75
  %_86 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_24 = getelementptr inbounds nuw i32, ptr %_86, i64 %iter1.sroa.0.0272
  store i32 1, ptr %_24, align 4
  %_0.i.not.i68 = icmp samesign ugt i64 %spec.select213, %n
  %or.cond220 = select i1 %_0.i3.i70, i1 true, i1 %_0.i.not.i68
  br i1 %or.cond220, label %bb10.preheader, label %bb2.i69

bb30:                                             ; preds = %bb2.i
  %_17 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_68, i64 %iter.sroa.0.0271
  %48 = getelementptr inbounds nuw i8, ptr %_17, i64 16
  %_73 = load i64, ptr %48, align 8, !noundef !6
  %_76.not = icmp eq i64 %_73, 0
  br i1 %_76.not, label %panic22.invoke, label %bb31

bb31:                                             ; preds = %bb30
  %49 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %_74 = load ptr, ptr %49, align 8, !nonnull !6, !noundef !6
  store i32 0, ptr %_74, align 4
  %_0.i.not.i = icmp samesign ugt i64 %spec.select212, %m
  %or.cond219 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond219, label %bb2.i69.preheader, label %bb2.i

panic22.invoke:                                   ; preds = %bb30, %bb2.i, %bb2.i69, %bb60, %bb59, %bb16, %bb66, %bb65, %bb64, %bb63, %bb17, %bb7.preheader, %bb36, %bb12
  %50 = phi i64 [ %m, %bb12 ], [ %n, %bb36 ], [ 0, %bb7.preheader ], [ %iter2.sroa.0.0276, %bb17 ], [ %_47, %bb63 ], [ %_42, %bb64 ], [ %_47, %bb65 ], [ %iter3.sroa.0.0274, %bb66 ], [ %iter2.sroa.0.0276, %bb16 ], [ %_47, %bb59 ], [ %iter3.sroa.0.0274, %bb60 ], [ %iter1.sroa.0.0272, %bb2.i69 ], [ %iter.sroa.0.0271, %bb2.i ], [ 0, %bb30 ]
  %51 = phi i64 [ %_90328, %bb12 ], [ %_197, %bb36 ], [ 0, %bb7.preheader ], [ %_90328, %bb17 ], [ %_170, %bb63 ], [ %_90328, %bb64 ], [ %_180, %bb65 ], [ %_170, %bb66 ], [ %_90328, %bb16 ], [ %_148, %bb59 ], [ %_148, %bb60 ], [ %_85, %bb2.i69 ], [ %_67, %bb2.i ], [ 0, %bb30 ]
  %52 = phi ptr [ @alloc_18df641d2c2df62652d096d93f852091, %bb12 ], [ @alloc_b00c72d6caf29025e90c0ab64fa1eed6, %bb36 ], [ @alloc_4fbf94089a080e87ab73176eefafa1f9, %bb7.preheader ], [ @alloc_56992e00ea9bee0fa107355f609e55bc, %bb17 ], [ @alloc_1d288691f361df57db325cd647d3e42f, %bb63 ], [ @alloc_ccca52a54b9e46b339b9a91748cb89ae, %bb64 ], [ @alloc_ab227fbe6d82a269a084c9d7b91d7b5a, %bb65 ], [ @alloc_f8fe858b8c1558f2ee4927fb6c14fba7, %bb66 ], [ @alloc_848d5804101f47dc7592003f085a5536, %bb16 ], [ @alloc_3cb0aa2108432cf44b493bbd57625613, %bb59 ], [ @alloc_4b0293b4d2fd5ea24fc25f1e54d47bb0, %bb60 ], [ @alloc_d214a5199dd5fd71a6da2179005950f1, %bb2.i69 ], [ @alloc_c3be058e40d8d19b19fafc29c5892dfd, %bb2.i ], [ @alloc_ee3ebfdcd74c75e2032f5e61df668a86, %bb30 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %50, i64 noundef %51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %52) #22
          to label %panic22.cont unwind label %cleanup4

panic22.cont:                                     ; preds = %panic22.invoke
  unreachable

bb21:                                             ; preds = %bb2.i.i.i3.i.i, %bb1
  %self1.i.i.i.i1.i.i170 = load i64, ptr %s, align 8, !range !22, !alias.scope !1289, !noalias !1302, !noundef !6
  %_6.i.i.i.i2.i.i171 = icmp eq i64 %self1.i.i.i.i1.i.i170, 0
  br i1 %_6.i.i.i.i2.i.i171, label %bb22, label %bb22.sink.split

bb26:                                             ; preds = %bb2.i.i.i3.i.i99, %bb25
  resume { ptr, i32 } %.pn
}
