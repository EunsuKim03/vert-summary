define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %panic, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb3.i.i.i46, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i"
  %3 = add nsw i64 %_4, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader246, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %3, -8
  %4 = shl nsw i64 %n.vec, 2
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %offset.idx
  %7 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %7, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %bb3.i.i.i46, label %bb3.i3.i.preheader246

bb3.i3.i.preheader246:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader246, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader246 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader246 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_4
  br i1 %exitcond.not.i.i, label %bb3.i.i.i46, label %bb3.i3.i, !llvm.loop !1041

bb3.i.i.i46:                                      ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i12.i = phi ptr [ %1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i" ], [ %5, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i12.i, align 4, !noalias !1037
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1042
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i62, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i47"

bb3.i.i62:                                        ; preds = %bb3.i.i.i46
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20
          to label %.noexc unwind label %bb37.thread

.noexc:                                           ; preds = %bb3.i.i62
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i47": ; preds = %bb3.i.i.i46
  br i1 %_2415.i.not.i, label %bb30.thread, label %bb3.i3.i49.preheader

bb3.i3.i49.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i47"
  %11 = add nsw i64 %_4, -1
  %min.iters.check205 = icmp ult i32 %n, 9
  br i1 %min.iters.check205, label %bb3.i3.i49.preheader244, label %vector.ph206

vector.ph206:                                     ; preds = %bb3.i3.i49.preheader
  %n.vec208 = and i64 %11, -8
  %12 = shl nsw i64 %n.vec208, 2
  %13 = getelementptr i8, ptr %9, i64 %12
  %14 = or disjoint i64 %n.vec208, 1
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next213, %vector.body209 ]
  %offset.idx211 = shl i64 %index210, 2
  %next.gep212 = getelementptr i8, ptr %9, i64 %offset.idx211
  %15 = getelementptr i8, ptr %next.gep212, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep212, align 4, !noalias !1047
  store <4 x i32> splat (i32 1), ptr %15, align 4, !noalias !1047
  %index.next213 = add nuw i64 %index210, 8
  %16 = icmp eq i64 %index.next213, %n.vec208
  br i1 %16, label %middle.block214, label %vector.body209, !llvm.loop !1050

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %11, %n.vec208
  br i1 %cmp.n215, label %bb5.preheader.preheader, label %bb3.i3.i49.preheader244

bb3.i3.i49.preheader244:                          ; preds = %bb3.i3.i49.preheader, %middle.block214
  %ptr.sroa.0.018.i.i50.ph = phi ptr [ %9, %bb3.i3.i49.preheader ], [ %13, %middle.block214 ]
  %iter.sroa.0.017.i.i51.ph = phi i64 [ 1, %bb3.i3.i49.preheader ], [ %14, %middle.block214 ]
  br label %bb3.i3.i49

bb3.i3.i49:                                       ; preds = %bb3.i3.i49.preheader244, %bb3.i3.i49
  %ptr.sroa.0.018.i.i50 = phi ptr [ %_15.i.i53, %bb3.i3.i49 ], [ %ptr.sroa.0.018.i.i50.ph, %bb3.i3.i49.preheader244 ]
  %iter.sroa.0.017.i.i51 = phi i64 [ %_28.i.i52, %bb3.i3.i49 ], [ %iter.sroa.0.017.i.i51.ph, %bb3.i3.i49.preheader244 ]
  %_28.i.i52 = add nuw i64 %iter.sroa.0.017.i.i51, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i50, align 4, !noalias !1047
  %_15.i.i53 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i50, i64 4
  %exitcond.not.i.i54 = icmp eq i64 %_28.i.i52, %_4
  br i1 %exitcond.not.i.i54, label %bb5.preheader.preheader, label %bb3.i3.i49, !llvm.loop !1051

bb5.preheader.preheader:                          ; preds = %bb3.i3.i49, %middle.block214
  %_15.i.i53.lcssa = phi ptr [ %13, %middle.block214 ], [ %_15.i.i53, %bb3.i3.i49 ]
  store i32 1, ptr %_15.i.i53.lcssa, align 4, !noalias !1047
  %_16 = load i32, ptr %arr, align 8, !noundef !23
  %_21 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13 = load i32, ptr %17, align 4, !noundef !23
  %_12 = icmp sgt i32 %_13, %_16
  br i1 %_12, label %bb51, label %bb1.loopexit

bb2.i.i.i3.i:                                     ; preds = %bb2.i.i.i3.i67, %bb37.thread
  %.pre-phi = phi i64 [ %31, %bb2.i.i.i3.i67 ], [ %_21.0.i.i.i.i, %bb37.thread ]
  %.pn95 = phi { ptr, i32 } [ %30, %bb2.i.i.i3.i67 ], [ %19, %bb37.thread ]
  %18 = phi ptr [ %29, %bb2.i.i.i3.i67 ], [ %1, %bb37.thread ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %18, i64 noundef %.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1052
  br label %bb38

bb37.thread:                                      ; preds = %bb3.i.i62
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb1.loopexit:                                     ; preds = %bb54, %bb5.preheader.preheader, %bb51
  %_73 = icmp sgt i32 %n, 2
  br i1 %_73, label %panic22.invoke, label %bb18.preheader.preheader

bb18.preheader.preheader:                         ; preds = %bb1.loopexit
  %20 = add nsw i32 %n, -2
  %_28 = add nsw i32 %n, -1
  %21 = sext i32 %_28 to i64
  %22 = zext nneg i32 %n to i64
  %_41 = icmp ult i32 %n, 3
  %23 = getelementptr inbounds nuw i32, ptr %arr, i64 %21
  %_47 = getelementptr inbounds nuw i32, ptr %9, i64 %21
  %indvars.iv.next139 = add nuw nsw i64 %21, 1
  %_41.1 = icmp eq i32 %_28, 0
  %24 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next139
  %_136.1 = icmp ult i64 %indvars.iv.next139, %22
  %_47.1 = getelementptr inbounds nuw i32, ptr %9, i64 %indvars.iv.next139
  %25 = add nuw nsw i32 %n, 1
  br label %bb18.preheader

bb15.loopexit:                                    ; preds = %bb27, %bb27.1, %bb18.preheader
  %_108 = icmp sgt i32 %_29.sroa.6.0121, 0
  %26 = add nsw i32 %_29.sroa.6.0121, -1
  br i1 %_108, label %bb18.preheader, label %bb70

bb18.preheader:                                   ; preds = %bb18.preheader.preheader, %bb15.loopexit
  %_29.sroa.6.0121 = phi i32 [ %26, %bb15.loopexit ], [ %20, %bb18.preheader.preheader ]
  %_120114.not = icmp sgt i32 %n, %_29.sroa.6.0121
  br i1 %_120114.not, label %bb15.loopexit, label %bb19.lr.ph

bb19.lr.ph:                                       ; preds = %bb18.preheader
  %_37 = sext i32 %_29.sroa.6.0121 to i64
  %_38 = icmp ult i32 %_29.sroa.6.0121, 2
  %27 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_131 = icmp ugt i32 %n, %_29.sroa.6.0121
  %_44 = getelementptr inbounds nuw i32, ptr %9, i64 %_37
  %_38.not = xor i1 %_38, true
  %_41.not = xor i1 %_41, true
  %brmerge251 = or i1 %_38.not, %_41.not
  %_37.mux252 = select i1 %_38.not, i64 %_37, i64 %21
  %alloc_fbb0a42b935a6403069846ad36369a2d.mux = select i1 %_38.not, ptr @alloc_fbb0a42b935a6403069846ad36369a2d, ptr @alloc_03b7d28282a695d26d17395cd5b9f22f
  br i1 %brmerge251, label %panic22.invoke, label %bb22

bb30.thread:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h58c565d97342e9d1E.exit.i.i47"
  store i32 1, ptr %9, align 4, !noalias !1047
  %_52174 = load i32, ptr %1, align 4, !noundef !23
  br label %bb2.i.i.i3.i72

panic:                                            ; preds = %bb17.i.i.i
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_44108cbca3058e83210cd4ddbd0bcb19) #20
          to label %unreachable unwind label %cleanup5

cleanup5:                                         ; preds = %panic22.invoke, %panic
  %28 = phi ptr [ inttoptr (i64 4 to ptr), %panic ], [ %9, %panic22.invoke ]
  %29 = phi ptr [ inttoptr (i64 4 to ptr), %panic ], [ %1, %panic22.invoke ]
  %_4.sroa.4.0.i18.i88155 = phi i64 [ 0, %panic ], [ %_4, %panic22.invoke ]
  %30 = landingpad { ptr, i32 }
          cleanup
  %cond = icmp eq i64 %_4.sroa.4.0.i18.i88155, 0
  br i1 %cond, label %bb38, label %bb2.i.i.i3.i67

bb2.i.i.i3.i67:                                   ; preds = %cleanup5
  %31 = shl nuw nsw i64 %_4.sroa.4.0.i18.i88155, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %28, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1061
  br label %bb2.i.i.i3.i

unreachable:                                      ; preds = %panic
  unreachable

bb70:                                             ; preds = %bb15.loopexit
  %_52 = load i32, ptr %1, align 4, !noundef !23
  %_54 = load i32, ptr %9, align 4, !noundef !23
  %_51 = add i32 %_52, -1
  %32 = add i32 %_51, %_54
  %wide.trip.count151 = zext nneg i32 %n to i64
  %33 = add nsw i64 %wide.trip.count151, -1
  %min.iters.check219 = icmp ult i32 %n, 9
  br i1 %min.iters.check219, label %bb29.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %bb70
  %n.vec222 = and i64 %33, -8
  %34 = or disjoint i64 %n.vec222, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %32, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph220
  %index224 = phi i64 [ 0, %vector.ph220 ], [ %index.next230, %vector.body223 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph220 ], [ %43, %vector.body223 ]
  %vec.phi225 = phi <4 x i32> [ %broadcast.splat, %vector.ph220 ], [ %44, %vector.body223 ]
  %offset.idx226 = or disjoint i64 %index224, 1
  %35 = getelementptr inbounds nuw i32, ptr %1, i64 %offset.idx226
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %wide.load = load <4 x i32>, ptr %35, align 4
  %wide.load227 = load <4 x i32>, ptr %36, align 4
  %37 = getelementptr inbounds nuw i32, ptr %9, i64 %offset.idx226
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %wide.load228 = load <4 x i32>, ptr %37, align 4
  %wide.load229 = load <4 x i32>, ptr %38, align 4
  %39 = add <4 x i32> %wide.load, splat (i32 -1)
  %40 = add <4 x i32> %wide.load227, splat (i32 -1)
  %41 = add <4 x i32> %39, %wide.load228
  %42 = add <4 x i32> %40, %wide.load229
  %43 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %41, <4 x i32> %vec.phi)
  %44 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %42, <4 x i32> %vec.phi225)
  %index.next230 = add nuw i64 %index224, 8
  %45 = icmp eq i64 %index.next230, %n.vec222
  br i1 %45, label %middle.block231, label %vector.body223, !llvm.loop !1070

middle.block231:                                  ; preds = %vector.body223
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %43, <4 x i32> %44)
  %46 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n232 = icmp eq i64 %33, %n.vec222
  br i1 %cmp.n232, label %bb30, label %bb29.preheader

bb29.preheader:                                   ; preds = %bb70, %middle.block231
  %indvars.iv146.ph = phi i64 [ 1, %bb70 ], [ %34, %middle.block231 ]
  %max.sroa.0.0124.ph = phi i32 [ %32, %bb70 ], [ %46, %middle.block231 ]
  br label %bb29

bb29:                                             ; preds = %bb29.preheader, %bb29
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %bb29 ], [ %indvars.iv146.ph, %bb29.preheader ]
  %max.sroa.0.0124 = phi i32 [ %spec.select, %bb29 ], [ %max.sroa.0.0124.ph, %bb29.preheader ]
  %_63 = getelementptr inbounds nuw i32, ptr %1, i64 %indvars.iv146
  %_62 = load i32, ptr %_63, align 4, !noundef !23
  %_66 = getelementptr inbounds nuw i32, ptr %9, i64 %indvars.iv146
  %_65 = load i32, ptr %_66, align 4, !noundef !23
  %_61 = add i32 %_62, -1
  %_60 = add i32 %_61, %_65
  %spec.select = tail call i32 @llvm.smax.i32(i32 %_60, i32 %max.sroa.0.0124)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond152.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count151
  br i1 %exitcond152.not, label %bb30, label %bb29, !llvm.loop !1071

bb30:                                             ; preds = %bb29, %middle.block231
  %spec.select.lcssa = phi i32 [ %46, %middle.block231 ], [ %spec.select, %bb29 ]
  %47 = shl nuw nsw i64 %_4, 2
  br label %bb2.i.i.i3.i72

bb2.i.i.i3.i72:                                   ; preds = %bb30, %bb30.thread
  %max.sroa.0.0.lcssa185 = phi i32 [ %_52174, %bb30.thread ], [ %spec.select.lcssa, %bb30 ]
  %_4.sroa.4.0.i18.i88156166170177184 = phi i64 [ 4, %bb30.thread ], [ %47, %bb30 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %9, i64 noundef %_4.sroa.4.0.i18.i88156166170177184, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1072
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_4.sroa.4.0.i18.i88156166170177184, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1081
  ret i32 %max.sroa.0.0.lcssa185

bb22:                                             ; preds = %bb19.lr.ph
  %_36 = load i32, ptr %27, align 4, !noundef !23
  %_39 = load i32, ptr %23, align 4, !noundef !23
  %_35 = icmp sgt i32 %_36, %_39
  br i1 %_35, label %bb23, label %bb27

bb23:                                             ; preds = %bb22
  br i1 %_131, label %bb67, label %panic22.invoke

bb27:                                             ; preds = %bb67, %bb22, %bb69
  %exitcond143.not = icmp eq i32 %_29.sroa.6.0121, %n
  br i1 %exitcond143.not, label %bb15.loopexit, label %bb19.1

bb19.1:                                           ; preds = %bb27
  br i1 %_41.1, label %bb22.1, label %panic22.invoke

bb22.1:                                           ; preds = %bb19.1
  %_36.1 = load i32, ptr %27, align 4, !noundef !23
  %_39.1 = load i32, ptr %24, align 4, !noundef !23
  %_35.1 = icmp sgt i32 %_36.1, %_39.1
  br i1 %_35.1, label %bb23.1, label %bb27.1

bb23.1:                                           ; preds = %bb22.1
  %_131.not = xor i1 %_131, true
  %_136.1.not = xor i1 %_136.1, true
  %brmerge = select i1 %_131.not, i1 true, i1 %_136.1.not
  %_37.mux = select i1 %_131.not, i64 %_37, i64 1
  %_4.mux = select i1 %_131.not, i64 %_4, i64 1
  %alloc_5701df87b45f8fe5f7c1f3d588c83d66.mux = select i1 %_131.not, ptr @alloc_5701df87b45f8fe5f7c1f3d588c83d66, ptr @alloc_fbe4347f48c5b21259477bfaee7fa067
  br i1 %brmerge, label %panic22.invoke, label %bb67.1

bb67.1:                                           ; preds = %bb23.1
  %_43.1 = load i32, ptr %_44, align 4, !noundef !23
  %_46.1 = load i32, ptr %_47.1, align 4, !noundef !23
  %_45.1 = add i32 %_46.1, 1
  %_42.1 = icmp slt i32 %_43.1, %_45.1
  br i1 %_42.1, label %bb69.1, label %bb27.1

bb69.1:                                           ; preds = %bb67.1
  store i32 %_45.1, ptr %_44, align 4
  br label %bb27.1

bb27.1:                                           ; preds = %bb69.1, %bb67.1, %bb22.1
  %exitcond143.not.1 = icmp eq i32 %_29.sroa.6.0121, %25
  br i1 %exitcond143.not.1, label %bb15.loopexit, label %panic22.invoke

bb67:                                             ; preds = %bb23
  %_43 = load i32, ptr %_44, align 4, !noundef !23
  %_46 = load i32, ptr %_47, align 4, !noundef !23
  %_45 = add i32 %_46, 1
  %_42 = icmp slt i32 %_43, %_45
  br i1 %_42, label %bb69, label %bb27

bb69:                                             ; preds = %bb67
  store i32 %_45, ptr %_44, align 4
  br label %bb27

bb51:                                             ; preds = %bb5.preheader.preheader
  %_20 = load i32, ptr %_21, align 4, !noundef !23
  %_23 = load i32, ptr %1, align 4, !noundef !23
  %_22 = add i32 %_23, 1
  %_19 = icmp slt i32 %_20, %_22
  br i1 %_19, label %bb54, label %bb1.loopexit

panic22.invoke:                                   ; preds = %bb19.lr.ph, %bb1.loopexit, %bb23, %bb19.1, %bb23.1, %bb27.1
  %48 = phi i64 [ %_37, %bb23 ], [ %indvars.iv.next139, %bb19.1 ], [ %_37.mux, %bb23.1 ], [ 2, %bb27.1 ], [ %_37.mux252, %bb19.lr.ph ], [ 2, %bb1.loopexit ]
  %49 = phi i64 [ %_4, %bb23 ], [ 2, %bb19.1 ], [ %_4.mux, %bb23.1 ], [ 2, %bb27.1 ], [ 2, %bb19.lr.ph ], [ 2, %bb1.loopexit ]
  %50 = phi ptr [ @alloc_5701df87b45f8fe5f7c1f3d588c83d66, %bb23 ], [ @alloc_03b7d28282a695d26d17395cd5b9f22f, %bb19.1 ], [ %alloc_5701df87b45f8fe5f7c1f3d588c83d66.mux, %bb23.1 ], [ @alloc_03b7d28282a695d26d17395cd5b9f22f, %bb27.1 ], [ %alloc_fbb0a42b935a6403069846ad36369a2d.mux, %bb19.lr.ph ], [ @alloc_e7787dfaf466e88ef77af12cc2e7ee49, %bb1.loopexit ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %48, i64 noundef %49, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %50) #20
          to label %panic22.cont unwind label %cleanup5

panic22.cont:                                     ; preds = %panic22.invoke
  unreachable

bb54:                                             ; preds = %bb51
  store i32 %_22, ptr %_21, align 4
  br label %bb1.loopexit

bb38:                                             ; preds = %cleanup5, %bb2.i.i.i3.i
  %.pn96 = phi { ptr, i32 } [ %.pn95, %bb2.i.i.i3.i ], [ %30, %cleanup5 ]
  resume { ptr, i32 } %.pn96
}
