define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_4.i.i.i = alloca [24 x i8], align 8
  %temp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %temp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2611
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1627, !noalias !2611, !noundef !27
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !2611, !noundef !27
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h78ccdfe928fe3ce2E.exit", !prof !1629

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !2611
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #25, !noalias !2611
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h78ccdfe928fe3ce2E.exit": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !2611, !nonnull !27, !noundef !27
  %_7.i.i.i = icmp samesign ule i64 %arr.1, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
  store i64 %err.0.i.i.i, ptr %temp, align 8, !alias.scope !2614, !noalias !2615
  %3 = getelementptr inbounds nuw i8, ptr %temp, i64 8
  store ptr %this.1.i.i.i, ptr %3, align 8, !alias.scope !2614, !noalias !2615
  %4 = getelementptr inbounds nuw i8, ptr %temp, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !2614, !noalias !2615
  %5 = shl nuw nsw i64 %arr.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i.i, ptr nonnull readonly align 4 %arr.0, i64 %5, i1 false), !noalias !2614
  store i64 %arr.1, ptr %4, align 8, !alias.scope !2614, !noalias !2615
  %_4.i.i = load ptr, ptr %3, align 8, !alias.scope !2616, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2621
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit", label %bb7.i.i, !prof !2624

cleanup:                                          ; preds = %panic3.invoke, %panic.i.i21.invoke, %bb10.i.i
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp, i64 noundef 4, i64 noundef 4)
          to label %bb34 unwind label %terminate

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h78ccdfe928fe3ce2E.exit"
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2624

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h2aa9d04a700e5c38E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit" unwind label %cleanup

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17haa7e8052bce08a13E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit": ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h78ccdfe928fe3ce2E.exit", %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2621
  %_11 = sext i32 %n to i64
  %_940.not = icmp eq i32 %n, 0
  br i1 %_940.not, label %bb11, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit"
  %len.i = load i64, ptr %4, align 8, !alias.scope !2625, !noalias !2628, !noundef !27
  %_6.i = load ptr, ptr %3, align 8, !nonnull !27
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %bb8
  %front.sroa.0.041 = phi i64 [ 0, %bb5.lr.ph ], [ %9, %bb8 ]
  %exitcond.not = icmp eq i64 %front.sroa.0.041, %len.i
  br i1 %exitcond.not, label %panic.i.i21.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit": ; preds = %bb5
  %exitcond53.not = icmp eq i64 %front.sroa.0.041, %arr.1
  br i1 %exitcond53.not, label %panic3.invoke, label %bb7

bb11:                                             ; preds = %bb8, %bb7, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit"
  %front.sroa.0.0.lcssa = phi i64 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h94420bf00e72d9daE.exit" ], [ %_11, %bb8 ], [ %front.sroa.0.041, %bb7 ]
  %len.i19 = load i64, ptr %4, align 8
  %_6.i22 = load ptr, ptr %3, align 8, !nonnull !27
  %7 = add nsw i64 %_11, -1
  %_4.i.i20.first_iter = icmp ult i64 %7, %len.i19
  %_32.first_iter = icmp ult i64 %7, %arr.1
  br label %bb12

bb7:                                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %front.sroa.0.041
  %_13 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %8 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %front.sroa.0.041
  %_17 = load i32, ptr %8, align 4, !noundef !27
  %_12 = icmp eq i32 %_13, %_17
  br i1 %_12, label %bb8, label %bb11

bb8:                                              ; preds = %bb7
  %9 = add nuw nsw i64 %front.sroa.0.041, 1
  %exitcond54.not = icmp eq i64 %9, %_11
  br i1 %exitcond54.not, label %bb11, label %bb5

bb12:                                             ; preds = %bb15, %bb11
  %back.sroa.0.0.in = phi i64 [ %_11, %bb11 ], [ %back.sroa.0.0, %bb15 ]
  %back.sroa.0.0 = add nsw i64 %back.sroa.0.0.in, -1
  %_22.not = icmp eq i64 %back.sroa.0.0, 0
  br i1 %_22.not, label %bb19, label %bb13

bb13:                                             ; preds = %bb12
  br i1 %_4.i.i20.first_iter, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25", label %panic.i.i21.invoke

panic.i.i21.invoke:                               ; preds = %bb5, %bb13
  %10 = phi i64 [ %back.sroa.0.0, %bb13 ], [ %len.i, %bb5 ]
  %11 = phi i64 [ %len.i19, %bb13 ], [ %len.i, %bb5 ]
  %12 = phi ptr [ @alloc_a96896050aa4a0ca4b79276cb4fa5348, %bb13 ], [ @alloc_002a255180f84db928a954e882b94c6d, %bb5 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef range(i64 0, 2305843009213693952) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #24
          to label %panic.i.i21.cont unwind label %cleanup

panic.i.i21.cont:                                 ; preds = %panic.i.i21.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25": ; preds = %bb13
  br i1 %_32.first_iter, label %bb15, label %panic3.invoke

bb19:                                             ; preds = %bb15, %bb12
  %back.sroa.0.0.lcssa = phi i64 [ %back.sroa.0.0, %bb15 ], [ 0, %bb12 ]
  %_33.not = icmp ult i64 %front.sroa.0.0.lcssa, %back.sroa.0.0.lcssa
  br i1 %_33.not, label %bb22.preheader, label %bb31

bb22.preheader:                                   ; preds = %bb19
  %umax = call i64 @llvm.umax.i64(i64 %front.sroa.0.0.lcssa, i64 %arr.1)
  %13 = add nsw i64 %front.sroa.0.0.lcssa, 1
  %umax57 = call i64 @llvm.umax.i64(i64 %arr.1, i64 %13)
  br label %bb22

bb15:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25"
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %back.sroa.0.0
  %_25 = load i32, ptr %_0.i.i23, align 4, !noundef !27
  %14 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %back.sroa.0.0
  %_29 = load i32, ptr %14, align 4, !noundef !27
  %_24 = icmp eq i32 %_25, %_29
  br i1 %_24, label %bb12, label %bb19

bb22:                                             ; preds = %bb22.preheader, %bb28
  %front.sroa.0.1 = phi i64 [ %15, %bb28 ], [ %front.sroa.0.0.lcssa, %bb22.preheader ]
  %15 = add nuw nsw i64 %front.sroa.0.1, 1
  %_43 = icmp ult i64 %front.sroa.0.1, %arr.1
  br i1 %_43, label %bb23, label %panic3.invoke

bb23:                                             ; preds = %bb22
  %_46 = icmp ult i64 %15, %arr.1
  br i1 %_46, label %bb24, label %panic3.invoke

bb24:                                             ; preds = %bb23
  %_39 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %front.sroa.0.1
  %_44 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %15
  call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %_3.i = load i32, ptr %_39, align 4, !alias.scope !2630, !noalias !2633, !noundef !27
  %_4.i = load i32, ptr %_44, align 4, !alias.scope !2633, !noalias !2630, !noundef !27
  %_0.i27 = icmp slt i32 %_3.i, %_4.i
  br i1 %_0.i27, label %bb31, label %bb28

panic3.invoke:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25", %bb23, %bb22
  %16 = phi i64 [ %umax57, %bb23 ], [ %umax, %bb22 ], [ %back.sroa.0.0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25" ], [ %arr.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit" ]
  %17 = phi ptr [ @alloc_0cf1401e02f1f4c272184d2dd14ba412, %bb23 ], [ @alloc_bccb9e30fe26e24f7a0999bc52aa5faa, %bb22 ], [ @alloc_0c09e01f4a8673aded7c522f5d09ad96, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit25" ], [ @alloc_55a4b443ecc6aa349664b12eafc79a4a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h810d3fe8f89bcd5cE.exit" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %16, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #25
          to label %panic3.cont unwind label %cleanup

panic3.cont:                                      ; preds = %panic3.invoke
  unreachable

bb28:                                             ; preds = %bb24
  %_47 = icmp eq i64 %15, %back.sroa.0.0.lcssa
  br i1 %_47, label %bb31, label %bb22

bb31:                                             ; preds = %bb24, %bb28, %bb19
  %_0.sroa.0.0 = phi i32 [ 1, %bb19 ], [ 1, %bb28 ], [ 0, %bb24 ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %temp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %temp)
  ret i32 %_0.sroa.0.0

terminate:                                        ; preds = %cleanup
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb34:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
