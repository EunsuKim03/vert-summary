define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %dis = alloca [24 x i8], align 8
  %x.sroa.2.0.extract.shift = lshr i64 %0, 32
  %x.sroa.2.0.extract.trunc = trunc nuw i64 %x.sroa.2.0.extract.shift to i32
  %y.sroa.2.0.extract.shift = lshr i64 %1, 32
  %y.sroa.2.0.extract.trunc = trunc nuw i64 %y.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dis)
  store i64 0, ptr %dis, align 8
  %2 = getelementptr inbounds nuw i8, ptr %dis, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %dis, i64 16
  store i64 0, ptr %3, align 8
  %_2416 = icmp sgt i32 %n, 0
  br i1 %_2416, label %bb1.i, label %bb6

bb9.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"
  %_33.pre.pre = load ptr, ptr %2, align 8
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 %_33.pre.pre, i64 noundef range(i64 0, 2305843009213693952) 2)
          to label %bb6 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb1.i.1, %bb1.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb9.i.i, %panic.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %self1.i.i.i.i1.i = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1775, !noalias !1778, !noundef !18
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb9, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup
  %4 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %self3.i.i.i.i4.i = load ptr, ptr %2, align 8, !alias.scope !1775, !noalias !1778, !nonnull !18, !noundef !18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1780
  br label %bb9

bb6:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit", %start, %bb9.i.i
  %_3332 = phi ptr [ %_33.pre.pre, %bb9.i.i ], [ %_15.i.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" ], [ inttoptr (i64 4 to ptr), %start ]
  %_3231 = phi i64 [ 2, %bb9.i.i ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" ], [ 0, %start ]
  %_23 = sext i32 %k to i64
  %_22 = add nsw i64 %_23, -1
  %_40 = icmp ult i64 %_22, %_3231
  br i1 %_40, label %bb16, label %panic.invoke

bb16:                                             ; preds = %bb6
  %_21 = getelementptr inbounds nuw float, ptr %_3332, i64 %_22
  %_20 = load float, ptr %_21, align 4, !noundef !18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %self1.i.i.i.i1.i9 = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1793, !noalias !1796, !noundef !18
  %_6.i.i.i.i2.i10 = icmp eq i64 %self1.i.i.i.i1.i9, 0
  br i1 %_6.i.i.i.i2.i10, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13", label %bb2.i.i.i3.i11

bb2.i.i.i3.i11:                                   ; preds = %bb16
  %5 = shl nuw i64 %self1.i.i.i.i1.i9, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_3332, i64 noundef %5, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !1798
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E.exit13": ; preds = %bb16, %bb2.i.i.i3.i11
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dis)
  ret i32 %_0

panic.invoke:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1", %bb6
  %6 = phi i64 [ %_22, %bb6 ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
  %7 = phi i64 [ %_3231, %bb6 ], [ 2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
  %8 = phi ptr [ @alloc_91929aa5fd5ecdf230d71e4a2b4c6739, %bb6 ], [ @alloc_d62f07554f1472b25e34b1cc2dcde560, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #23
          to label %panic.cont unwind label %cleanup.loopexit.split-lp

panic.cont:                                       ; preds = %panic.invoke
  unreachable

bb1.i:                                            ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1799)
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit": ; preds = %bb1.i
  %x.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_11 = sitofp i32 %x.sroa.0.0.extract.trunc to float
  %_10 = fmul float %_11, %_11
  %y.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %_16 = sitofp i32 %y.sroa.0.0.extract.trunc to float
  %_15 = fmul float %_16, %_16
  %_9 = fadd float %_10, %_15
  %_15.i.pre = load ptr, ptr %2, align 8, !alias.scope !1799
  store float %_9, ptr %_15.i.pre, align 4, !noalias !1799
  store i64 1, ptr %3, align 8
  %exitcond21.not = icmp eq i32 %n, 1
  br i1 %exitcond21.not, label %bb6, label %bb10.1

bb10.1:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit"
  %_11.1 = sitofp i32 %x.sroa.2.0.extract.trunc to float
  %_10.1 = fmul float %_11.1, %_11.1
  %_16.1 = sitofp i32 %y.sroa.2.0.extract.trunc to float
  %_15.1 = fmul float %_16.1, %_16.1
  %_9.1 = fadd float %_10.1, %_15.1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %self1.i.1 = load i64, ptr %dis, align 8, !range !1754, !alias.scope !1802, !noundef !18
  %_4.i.1 = icmp eq i64 %self1.i.1, 1
  br i1 %_4.i.1, label %bb1.i.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"

bb1.i.1:                                          ; preds = %bb10.1
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge" unwind label %cleanup.loopexit

"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge": ; preds = %bb1.i.1
  %_15.i.1.pre = load ptr, ptr %2, align 8, !alias.scope !1802
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1": ; preds = %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge", %bb10.1
  %_15.i.1 = phi ptr [ %_15.i.1.pre, %"bb1.i.1._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h89028d718c8aa267E.exit.1_crit_edge" ], [ %_15.i.pre, %bb10.1 ]
  %end.i.1 = getelementptr inbounds nuw i8, ptr %_15.i.1, i64 4
  store float %_9.1, ptr %end.i.1, align 4, !noalias !1802
  store i64 2, ptr %3, align 8
  %exitcond21.1.not = icmp eq i32 %n, 2
  br i1 %exitcond21.1.not, label %bb9.i.i, label %panic.invoke

bb9:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
