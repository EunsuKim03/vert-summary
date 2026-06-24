define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  %dis = alloca [24 x i8], align 8
  %y = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %y, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dis)
  store i64 0, ptr %dis, align 8, !alias.scope !2555
  %2 = getelementptr inbounds nuw i8, ptr %dis, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8, !alias.scope !2555
  %3 = getelementptr inbounds nuw i8, ptr %dis, i64 16
  store i64 0, ptr %3, align 8
  %_0.i.i.i16 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i16, label %bb8, label %bb7

cleanup.loopexit:                                 ; preds = %bb1.i.i.2, %bb1.i.i.1, %bb1.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %panic, %bb10.i.i, %bb9.i.i, %panic.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
          to label %bb18 unwind label %terminate

bb7:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2", %start
  %_4.i.i7 = load ptr, ptr %2, align 8, !alias.scope !2558, !nonnull !32, !noundef !32
  %len.i.i = load i64, ptr %3, align 8, !alias.scope !2558, !noundef !32
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2563
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !2566
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit", label %bb7.i.i, !prof !2549

bb7.i.i:                                          ; preds = %bb7
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2549

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he5fef1bddceca5efE(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef align 8 dereferenceable(8) %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit" unwind label %cleanup.loopexit.split-lp

bb9.i.i:                                          ; preds = %bb7.i.i
; invoke core::slice::sort::shared::smallsort::insertion_sort_shift_left
  invoke void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h500061426fbe7d96E(ptr noalias noundef nonnull align 4 %_4.i.i7, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias align 8 poison)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit": ; preds = %bb9.i.i, %bb10.i.i, %bb7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !2563
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_31 = sext i32 %k to i64
  %_30 = add nsw i64 %_31, -1
  %len.i = load i64, ptr %3, align 8, !alias.scope !2570, !noundef !32
  %_4.i.i9 = icmp ult i64 %_30, %len.i
  br i1 %_4.i.i9, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit"
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483649, 2147483647) %_30, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_91929aa5fd5ecdf230d71e4a2b4c6739) #24
          to label %.noexc10 unwind label %cleanup.loopexit.split-lp

.noexc10:                                         ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E.exit": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE.exit"
  %_6.i = load ptr, ptr %2, align 8, !alias.scope !2570, !nonnull !32, !noundef !32
  %_0.i.i = getelementptr inbounds nuw float, ptr %_6.i, i64 %_30
  %_27 = load float, ptr %_0.i.i, align 4, !noundef !32
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_27)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dis)
  ret i32 %_0

bb8:                                              ; preds = %start
  %_18 = load i32, ptr %x, align 8, !noundef !32
  %_17 = sitofp i32 %_18 to float
  %_16 = fmul float %_17, %_17
  %_23 = load i32, ptr %y, align 8, !noundef !32
  %_22 = sitofp i32 %_23 to float
  %_21 = fmul float %_22, %_22
  %_15 = fadd float %_16, %_21
  %len.i.i11 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12 = icmp eq i64 %len.i.i11, %self1.i.i
  br i1 %_4.i.i12, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit"

bb1.i.i:                                          ; preds = %bb8
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit": ; preds = %bb1.i.i, %bb8
  %_15.i.i = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i = getelementptr inbounds nuw float, ptr %_15.i.i, i64 %len.i.i11
  store float %_15, ptr %end.i.i, align 4
  %4 = add i64 %len.i.i11, 1
  store i64 %4, ptr %3, align 8
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb7, label %bb8.1

bb8.1:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit"
  %5 = getelementptr inbounds nuw i8, ptr %x, i64 4
  %_18.1 = load i32, ptr %5, align 4, !noundef !32
  %_17.1 = sitofp i32 %_18.1 to float
  %_16.1 = fmul float %_17.1, %_17.1
  %6 = getelementptr inbounds nuw i8, ptr %y, i64 4
  %_23.1 = load i32, ptr %6, align 4, !noundef !32
  %_22.1 = sitofp i32 %_23.1 to float
  %_21.1 = fmul float %_22.1, %_22.1
  %_15.1 = fadd float %_16.1, %_21.1
  %len.i.i11.1 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i.1 = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12.1 = icmp eq i64 %len.i.i11.1, %self1.i.i.1
  br i1 %_4.i.i12.1, label %bb1.i.i.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1"

bb1.i.i.1:                                        ; preds = %bb8.1
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1": ; preds = %bb1.i.i.1, %bb8.1
  %_15.i.i.1 = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i.1 = getelementptr inbounds nuw float, ptr %_15.i.i.1, i64 %len.i.i11.1
  store float %_15.1, ptr %end.i.i.1, align 4
  %7 = add i64 %len.i.i11.1, 1
  store i64 %7, ptr %3, align 8
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb7

bb6.2:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.1"
  %_19.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb6.2
  %8 = getelementptr inbounds nuw i32, ptr %x, i64 %_19.2
  %_18.2 = load i32, ptr %8, align 4, !noundef !32
  %_17.2 = sitofp i32 %_18.2 to float
  %_16.2 = fmul float %_17.2, %_17.2
  %9 = getelementptr inbounds nuw i32, ptr %y, i64 %_19.2
  %_23.2 = load i32, ptr %9, align 4, !noundef !32
  %_22.2 = sitofp i32 %_23.2 to float
  %_21.2 = fmul float %_22.2, %_22.2
  %_15.2 = fadd float %_16.2, %_21.2
  %len.i.i11.2 = load i64, ptr %3, align 8, !alias.scope !2573, !noundef !32
  %self1.i.i.2 = load i64, ptr %dis, align 8, !range !2548, !alias.scope !2573, !noundef !32
  %_4.i.i12.2 = icmp eq i64 %len.i.i11.2, %self1.i.i.2
  br i1 %_4.i.i12.2, label %bb1.i.i.2, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2"

bb1.i.i.2:                                        ; preds = %bb8.2
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3f9d0af4feec1c41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dis)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2" unwind label %cleanup.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE.exit.2": ; preds = %bb1.i.i.2, %bb8.2
  %_15.i.i.2 = load ptr, ptr %2, align 8, !alias.scope !2573, !nonnull !32, !noundef !32
  %end.i.i.2 = getelementptr inbounds nuw float, ptr %_15.i.i.2, i64 %len.i.i11.2
  store float %_15.2, ptr %end.i.i.2, align 4
  %10 = add i64 %len.i.i11.2, 1
  store i64 %10, ptr %3, align 8
  br label %bb7

panic:                                            ; preds = %bb6.2
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d62f07554f1472b25e34b1cc2dcde560) #25
          to label %unreachable unwind label %cleanup.loopexit.split-lp

unreachable:                                      ; preds = %panic
  unreachable

terminate:                                        ; preds = %cleanup
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb18:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
