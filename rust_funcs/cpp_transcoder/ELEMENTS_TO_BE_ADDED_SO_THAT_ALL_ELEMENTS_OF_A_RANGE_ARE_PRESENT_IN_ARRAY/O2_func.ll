define noundef i32 @f_gold(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %compare.i = alloca [0 x i8], align 1
  %is_less.i.i = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %compare.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  store ptr %compare.i, ptr %is_less.i.i, align 8, !noalias !1757
  %b.i.i = icmp samesign ult i64 %arr.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit", label %bb7.i.i, !prof !1761

bb7.i.i:                                          ; preds = %start
  %b1.i.i = icmp samesign ult i64 %arr.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !1761

bb10.i.i:                                         ; preds = %bb7.i.i
; call core::slice::sort::stable::driftsort_main
  call void @_ZN4core5slice4sort6stable14driftsort_main17hd941c990cf943cf1E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, ptr noalias noundef nonnull align 8 dereferenceable(8) %is_less.i.i)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9ff766c275f64972E(ptr noalias noundef nonnull align 4 %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit": ; preds = %start, %bb10.i.i, %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %is_less.i.i), !noalias !1754
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %compare.i)
  %_5 = add i32 %n, -1
  %iter1 = sext i32 %_5 to i64
  %_2414.not = icmp eq i32 %_5, 0
  br i1 %_2414.not, label %bb15, label %bb14.preheader

bb14.preheader:                                   ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"
  %0 = call i64 @llvm.usub.sat.i64(i64 %arr.1, i64 1)
  %1 = add nsw i64 %iter1, -1
  %umin28 = call i64 @llvm.umin.i64(i64 %0, i64 %1)
  %min.iters.check = icmp samesign ult i64 %umin28, 8
  br i1 %min.iters.check, label %bb14.preheader34, label %vector.ph

vector.ph:                                        ; preds = %bb14.preheader
  %2 = add nuw nsw i64 %umin28, 1
  %n.mod.vf = and i64 %2, 7
  %3 = icmp eq i64 %n.mod.vf, 0
  %4 = select i1 %3, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %2, %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi29 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi33, %vector.body ]
  %5 = getelementptr inbounds nuw float, ptr %arr.0, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load = load <4 x float>, ptr %5, align 4
  %wide.load30 = load <4 x float>, ptr %6, align 4
  %7 = getelementptr inbounds nuw float, ptr %arr.0, i64 %index
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %wide.load31 = load <4 x float>, ptr %8, align 4
  %wide.load32 = load <4 x float>, ptr %9, align 4
  %10 = fcmp une <4 x float> %wide.load, %wide.load31
  %11 = fcmp une <4 x float> %wide.load30, %wide.load32
  %12 = fadd <4 x float> %wide.load, splat (float 1.000000e+00)
  %13 = fadd <4 x float> %wide.load30, splat (float 1.000000e+00)
  %14 = fcmp une <4 x float> %wide.load31, %12
  %15 = fcmp une <4 x float> %wide.load32, %13
  %16 = and <4 x i1> %10, %14
  %17 = and <4 x i1> %11, %15
  %18 = fsub <4 x float> %wide.load31, %wide.load
  %19 = fsub <4 x float> %wide.load32, %wide.load30
  %20 = fadd <4 x float> %18, splat (float -1.000000e+00)
  %21 = fadd <4 x float> %19, splat (float -1.000000e+00)
  %22 = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %20)
  %23 = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %21)
  %24 = select <4 x i1> %16, <4 x i32> %22, <4 x i32> zeroinitializer
  %predphi = add <4 x i32> %vec.phi, %24
  %25 = select <4 x i1> %17, <4 x i32> %23, <4 x i32> zeroinitializer
  %predphi33 = add <4 x i32> %vec.phi29, %25
  %index.next = add nuw i64 %index, 8
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !1762

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %predphi33, %predphi
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb14.preheader34

bb14.preheader34:                                 ; preds = %bb14.preheader, %middle.block
  %count.sroa.0.016.ph = phi i32 [ 0, %bb14.preheader ], [ %27, %middle.block ]
  %iter.sroa.0.015.ph = phi i64 [ 0, %bb14.preheader ], [ %n.vec, %middle.block ]
  br label %bb14

bb15:                                             ; preds = %bb13, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h49c61478579fe639E.exit" ], [ %count.sroa.0.1, %bb13 ]
  ret i32 %count.sroa.0.0.lcssa

bb14:                                             ; preds = %bb14.preheader34, %bb13
  %count.sroa.0.016 = phi i32 [ %count.sroa.0.1, %bb13 ], [ %count.sroa.0.016.ph, %bb14.preheader34 ]
  %iter.sroa.0.015 = phi i64 [ %28, %bb13 ], [ %iter.sroa.0.015.ph, %bb14.preheader34 ]
  %28 = add nuw nsw i64 %iter.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %iter.sroa.0.015, %arr.1
  br i1 %exitcond.not, label %panic, label %bb3

bb3:                                              ; preds = %bb14
  %29 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.015
  %_9 = load float, ptr %29, align 4, !noundef !18
  %exitcond21.not = icmp eq i64 %iter.sroa.0.015, %0
  br i1 %exitcond21.not, label %panic2, label %bb4

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c57df5a5e420aa3a935b0836c52d5722) #18
  unreachable

bb4:                                              ; preds = %bb3
  %30 = getelementptr inbounds nuw float, ptr %arr.0, i64 %28
  %_12 = load float, ptr %30, align 4, !noundef !18
  %_8 = fcmp une float %_9, %_12
  %_17 = fadd float %_9, 1.000000e+00
  %_15 = fcmp une float %_12, %_17
  %or.cond = and i1 %_8, %_15
  br i1 %or.cond, label %bb10, label %bb13

panic2:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %28, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fdf0cf6cbeffe0b665e615036846c3c5) #18
  unreachable

bb13:                                             ; preds = %bb4, %bb10
  %count.sroa.0.1 = phi i32 [ %31, %bb10 ], [ %count.sroa.0.016, %bb4 ]
  %exitcond23.not = icmp eq i64 %28, %iter1
  br i1 %exitcond23.not, label %bb15, label %bb14, !llvm.loop !1763

bb10:                                             ; preds = %bb4
  %_21 = fsub float %_12, %_9
  %_20 = fadd float %_21, -1.000000e+00
  %_19 = call i32 @llvm.fptosi.sat.i32.f32(float %_20)
  %31 = add i32 %_19, %count.sroa.0.016
  br label %bb13
}
