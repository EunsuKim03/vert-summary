define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %m) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %arr1 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2611
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1627, !noalias !2611, !noundef !27
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1628, !noalias !2611, !noundef !27
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE.exit", !prof !1629

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !2611
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #25, !noalias !2611
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE.exit": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !2611, !nonnull !27, !noundef !27
  %_7.i.i.i = icmp samesign ugt i64 %err.0.i.i.i, 1
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
  store i64 %err.0.i.i.i, ptr %arr1, align 8, !alias.scope !2614, !noalias !2615
  %4 = getelementptr inbounds nuw i8, ptr %arr1, i64 8
  store ptr %this.1.i.i.i, ptr %4, align 8, !alias.scope !2614, !noalias !2615
  %5 = getelementptr inbounds nuw i8, ptr %arr1, i64 16
  store i64 0, ptr %5, align 8, !alias.scope !2614, !noalias !2615
  store i64 %0, ptr %this.1.i.i.i, align 4, !noalias !2611
  store i64 2, ptr %5, align 8, !alias.scope !2614, !noalias !2615
  %_4.i.i = load ptr, ptr %4, align 8, !alias.scope !2616, !nonnull !27, !noundef !27
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5df1219b1e58cd6aE(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) 2, i64 noundef 1, ptr noalias nonnull align 1 poison)
  %_0.i.i.i31 = icmp sgt i32 %m, 0
  br i1 %_0.i.i.i31, label %bb8.lr.ph, label %bb9

bb8.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE.exit"
  %len.i = load i64, ptr %5, align 8, !alias.scope !2621, !noalias !2624, !noundef !27
  %_6.i = load ptr, ptr %4, align 8, !nonnull !27
  %6 = zext nneg i32 %m to i64
  %7 = add nsw i32 %m, -1
  %8 = zext i32 %7 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %len.i, i64 %8)
  %.not.not = icmp ugt i64 %len.i, %8
  br label %bb8

cleanup:                                          ; preds = %panic.i.i21.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %terminate

bb8:                                              ; preds = %bb8.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit"
  %indvars.iv44 = phi i64 [ 0, %bb8.lr.ph ], [ %indvars.iv.next45, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit" ]
  %min.sroa.0.033 = phi i32 [ 0, %bb8.lr.ph ], [ %10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit" ]
  br i1 %.not.not, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit", label %panic.i.i21.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit": ; preds = %bb8
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %indvars.iv44
  %_19 = load i32, ptr %_0.i.i, align 4, !noundef !27
  %10 = add i32 %_19, %min.sroa.0.033
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %6
  br i1 %exitcond.not, label %bb9, label %bb8

bb9:                                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE.exit"
  %min.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hb41106d6d89d587aE.exit" ], [ %10, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit" ]
  %_25 = sub i32 %n, %m
  %_0.i.i.i1535 = icmp slt i32 %_25, %n
  br i1 %_0.i.i.i1535, label %bb14.lr.ph, label %bb15

bb14.lr.ph:                                       ; preds = %bb9
  %len.i19 = load i64, ptr %5, align 8, !alias.scope !2626, !noalias !2629, !noundef !27
  %_6.i22 = load ptr, ptr %4, align 8, !nonnull !27
  %11 = zext i32 %_25 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = add i32 %n, 1
  br label %bb14

bb14:                                             ; preds = %bb14.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25"
  %indvars.iv = phi i64 [ %12, %bb14.lr.ph ], [ %indvars.iv.next, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25" ]
  %max.sroa.0.038 = phi i32 [ 0, %bb14.lr.ph ], [ %17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25" ]
  %iter2.sroa.0.037 = phi i32 [ %_25, %bb14.lr.ph ], [ %18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25" ]
  %_34 = sext i32 %iter2.sroa.0.037 to i64
  %_4.i.i20 = icmp ugt i64 %len.i19, %_34
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25", label %panic.i.i21.invoke

panic.i.i21.invoke:                               ; preds = %bb8, %bb14
  %14 = phi i64 [ %_34, %bb14 ], [ %umin, %bb8 ]
  %15 = phi i64 [ %len.i19, %bb14 ], [ %len.i, %bb8 ]
  %16 = phi ptr [ @alloc_bb37de9869e6d37434222f231ec1b75e, %bb14 ], [ @alloc_197392f4a6764c7482969e19d2339d49, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %14, i64 noundef range(i64 0, 2305843009213693952) %15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #24
          to label %panic.i.i21.cont unwind label %cleanup

panic.i.i21.cont:                                 ; preds = %panic.i.i21.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25": ; preds = %bb14
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_34
  %_31 = load i32, ptr %_0.i.i23, align 4, !noundef !27
  %17 = add i32 %_31, %max.sroa.0.038
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = trunc i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond48.not = icmp eq i32 %13, %lftr.wideiv
  br i1 %exitcond48.not, label %bb15, label %bb14

bb15:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25", %bb9
  %max.sroa.0.0.lcssa = phi i32 [ 0, %bb9 ], [ %17, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf70eeff0a498e9edE.exit25" ]
  %_0 = sub i32 %max.sroa.0.0.lcssa, %min.sroa.0.0.lcssa
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr1)
  ret i32 %_0

terminate:                                        ; preds = %cleanup
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb19:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
