define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %S1 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %S1)
  store i64 %0, ptr %S1, align 8
  %tail.sroa.0.02.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %S1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %_3.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2615, !noalias !2622, !noundef !27
  %_4.i.i.i.i.i.i = load i32, ptr %S1, align 8, !alias.scope !2623, !noalias !2624, !noundef !27
  %_0.i.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2625
  store i32 %_3.i.i.i.i.i.i, ptr %S1, align 8, !alias.scope !2625, !noalias !2626
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit": ; preds = %start, %bb4.i.i.i.i
  %_0.i.i.i.i61 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i.i61, label %bb10.preheader.lr.ph, label %bb37

bb10.preheader.lr.ph:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit"
  %1 = add nsw i32 %n, -1
  %2 = zext nneg i32 %n to i64
  %3 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb10.preheader

bb4.loopexit:                                     ; preds = %bb10.backedge
  %_0.i.i.i.i = icmp sgt i32 %iter.sroa.5.164, 0
  %4 = add nsw i32 %iter.sroa.5.164, -1
  %iter.sroa.5.1 = select i1 %_0.i.i.i.i, i32 %4, i32 %iter.sroa.5.164
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %4, i32 undef
  br i1 %_0.i.i.i.i, label %bb10.preheader, label %bb37

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb4.loopexit
  %_0.sroa.3.0.i.i.i65 = phi i32 [ %1, %bb10.preheader.lr.ph ], [ %_0.sroa.3.0.i.i.i, %bb4.loopexit ]
  %iter.sroa.5.164 = phi i32 [ %1, %bb10.preheader.lr.ph ], [ %iter.sroa.5.1, %bb4.loopexit ]
  %_42 = sext i32 %_0.sroa.3.0.i.i.i65 to i64
  %_43 = icmp ult i32 %_0.sroa.3.0.i.i.i65, 2
  %5 = getelementptr inbounds nuw i32, ptr %S1, i64 %_42
  %6 = zext i32 %_0.sroa.3.0.i.i.i65 to i64
  %7 = zext i32 %_0.sroa.3.0.i.i.i65 to i64
  %sext = sext i32 %_0.sroa.3.0.i.i.i65 to i64
  br label %bb12

bb37:                                             ; preds = %bb4.loopexit, %bb33, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit"
  %_0.sroa.0.0 = phi i32 [ -2147483648, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h860e7a6ecafd8194E.exit" ], [ %_41, %bb33 ], [ -2147483648, %bb4.loopexit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %S1)
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb10.preheader, %bb10.backedge
  %indvars.iv103 = phi i64 [ 0, %bb10.preheader ], [ %indvars.iv.next104, %bb10.backedge ]
  %indvars.iv94 = phi i64 [ 1, %bb10.preheader ], [ %indvars.iv.next95, %bb10.backedge ]
  %indvars.iv86 = phi i32 [ 2, %bb10.preheader ], [ %indvars.iv.next87, %bb10.backedge ]
  %_21 = icmp ne i64 %indvars.iv103, %7
  %8 = add nuw nsw i64 %indvars.iv103, 1
  %_0.i.i.i2154 = icmp samesign ult i64 %8, %3
  %or.cond = select i1 %_21, i1 %_0.i.i.i2154, i1 false
  br i1 %or.cond, label %bb19.lr.ph, label %bb10.backedge

bb10.backedge:                                    ; preds = %bb17.backedge, %bb12
  %indvars.iv.next87 = add nuw i32 %indvars.iv86, 1
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond108.not, label %bb4.loopexit, label %bb12

bb19.lr.ph:                                       ; preds = %bb12
  %9 = sext i32 %indvars.iv86 to i64
  %_48 = icmp samesign ult i64 %indvars.iv103, 2
  %10 = getelementptr inbounds nuw i32, ptr %S1, i64 %indvars.iv103
  br label %bb19

bb19:                                             ; preds = %bb19.lr.ph, %bb17.backedge
  %indvars.iv96 = phi i64 [ %indvars.iv94, %bb19.lr.ph ], [ %indvars.iv.next97, %bb17.backedge ]
  %indvars.iv88 = phi i64 [ %9, %bb19.lr.ph ], [ %indvars.iv.next89, %bb17.backedge ]
  %_30 = icmp ne i64 %indvars.iv96, %6
  %11 = add nuw nsw i64 %indvars.iv96, 1
  %_0.i.i.i2850 = icmp samesign ult i64 %11, %2
  %or.cond109 = select i1 %_30, i1 %_0.i.i.i2850, i1 false
  br i1 %or.cond109, label %bb26.lr.ph, label %bb17.backedge

bb17.backedge:                                    ; preds = %bb24.backedge, %bb19
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next97 to i32
  %exitcond102.not = icmp eq i32 %n, %lftr.wideiv101
  br i1 %exitcond102.not, label %bb10.backedge, label %bb19

bb26.lr.ph:                                       ; preds = %bb19
  %_51 = icmp samesign ult i64 %indvars.iv96, 2
  %12 = getelementptr inbounds nuw i32, ptr %S1, i64 %indvars.iv96
  br label %bb26

bb26:                                             ; preds = %bb26.lr.ph, %bb24.backedge
  %indvars.iv90 = phi i64 [ %indvars.iv88, %bb26.lr.ph ], [ %indvars.iv.next91, %bb24.backedge ]
  %13 = icmp eq i64 %indvars.iv90, %sext
  br i1 %13, label %bb24.backedge, label %bb29

bb24.backedge:                                    ; preds = %bb26, %bb33
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next91 to i32
  %exitcond.not = icmp eq i32 %n, %lftr.wideiv
  br i1 %exitcond.not, label %bb17.backedge, label %bb26

bb29:                                             ; preds = %bb26
  br i1 %_43, label %bb30, label %panic

bb30:                                             ; preds = %bb29
  %_41 = load i32, ptr %5, align 4, !noundef !27
  br i1 %_48, label %bb31, label %panic5

panic:                                            ; preds = %bb29
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_42, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a02a272b8a27a087c3a3d3533574a9cf) #24
  unreachable

bb31:                                             ; preds = %bb30
  br i1 %_51, label %bb32, label %panic6

panic5:                                           ; preds = %bb30
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv103, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7d8b694cddc44c4250e80b543804b956) #24
  unreachable

bb32:                                             ; preds = %bb31
  %_54 = icmp ult i64 %indvars.iv90, 2
  br i1 %_54, label %bb33, label %panic7

panic6:                                           ; preds = %bb31
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv96, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b7d9a226e74b9a016d96b4d90906e390) #24
  unreachable

bb33:                                             ; preds = %bb32
  %_46 = load i32, ptr %10, align 4, !noundef !27
  %_49 = load i32, ptr %12, align 4, !noundef !27
  %_45 = add i32 %_49, %_46
  %14 = getelementptr inbounds nuw i32, ptr %S1, i64 %indvars.iv90
  %_52 = load i32, ptr %14, align 4, !noundef !27
  %_44 = add i32 %_45, %_52
  %_40 = icmp eq i32 %_41, %_44
  br i1 %_40, label %bb37, label %bb24.backedge

panic7:                                           ; preds = %bb32
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv90, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9e4ce73cc2751f21e5d69a8617f7500) #24
  unreachable
}
