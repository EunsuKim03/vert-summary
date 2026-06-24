define noundef range(i32 0, -2147483648) i32 @f_gold(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %arr1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %arr2) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %table = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %table)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef 2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %table, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %table, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %table, i64 16
  store i64 2, ptr %4, align 8, !alias.scope !1644
  %_17 = load float, ptr %arr1, align 4, !noundef !37
  %_19 = load float, ptr %arr2, align 4, !noundef !37
  %_16 = fcmp oeq float %_17, %_19
  br i1 %_16, label %bb15, label %bb23

cleanup:                                          ; preds = %panic.i.i48.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit.1": ; preds = %bb30.1.1
  %_6.i = load ptr, ptr %3, align 8, !nonnull !37
  %_48 = load i32, ptr %_6.i, align 4, !noundef !37
  %_0.i.i.1 = getelementptr inbounds nuw i8, ptr %_6.i, i64 4
  %_48.1 = load i32, ptr %_0.i.i.1, align 4, !noundef !37
  %_0.sroa.0.0.i.i24 = tail call i32 @llvm.smax.i32(i32 %_48, i32 %_48.1)
  %_0.sroa.0.0.i.i24.1 = tail call i32 @llvm.smax.i32(i32 %_0.sroa.0.0.i.i24, i32 0)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %table, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %table)
  ret i32 %_0.sroa.0.0.i.i24.1

bb15:                                             ; preds = %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit
  %len.i33 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i34.not = icmp eq i64 %len.i33, 0
  br i1 %_4.i.i34.not, label %panic.i.i48.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39": ; preds = %bb15
  %_6.i36 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_24 = load i32, ptr %_6.i36, align 4, !noundef !37
  %_21 = icmp slt i32 %_24, 1
  br i1 %_21, label %bb17, label %bb23

bb17:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39"
  store i32 1, ptr %_6.i36, align 4
  br label %bb23

bb23:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39", %_ZN5alloc3vec9from_elem17ha6659eb76b2047a2E.exit, %bb17
  %_30 = fcmp ogt float %_17, %_19
  br i1 %_30, label %bb24, label %bb30

bb24:                                             ; preds = %bb23
  %len.i46 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i47.not = icmp eq i64 %len.i46, 0
  br i1 %_4.i.i47.not, label %panic.i.i48.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52"

panic.i.i48.invoke:                               ; preds = %bb24, %bb24.195, %bb23.1, %bb23.1.1, %bb15, %bb15.1, %bb15.185, %bb15.1.1, %bb30.1.1
  %6 = phi i64 [ %len.i, %bb30.1.1 ], [ 0, %bb15 ], [ 1, %bb15.1 ], [ 0, %bb15.185 ], [ 1, %bb15.1.1 ], [ 0, %bb24 ], [ 0, %bb24.195 ], [ 1, %bb23.1 ], [ 1, %bb23.1.1 ]
  %7 = phi i64 [ %len.i, %bb30.1.1 ], [ %len.i33, %bb15 ], [ %len.i33.1, %bb15.1 ], [ %len.i33.183, %bb15.185 ], [ %len.i33.1.1, %bb15.1.1 ], [ %len.i46, %bb24 ], [ %len.i46.193, %bb24.195 ], [ %len.i46.1, %bb23.1 ], [ %len.i46.1.1, %bb23.1.1 ]
  %8 = phi ptr [ @alloc_260c29e5d0117fecd12d562e952c9273, %bb30.1.1 ], [ @alloc_e9a266468a399403d436f76c4c32e609, %bb15 ], [ @alloc_e9a266468a399403d436f76c4c32e609, %bb15.1 ], [ @alloc_e9a266468a399403d436f76c4c32e609, %bb15.185 ], [ @alloc_e9a266468a399403d436f76c4c32e609, %bb15.1.1 ], [ @alloc_f341562087d8e178f84756702259ac71, %bb24 ], [ @alloc_f341562087d8e178f84756702259ac71, %bb24.195 ], [ @alloc_f341562087d8e178f84756702259ac71, %bb23.1 ], [ @alloc_f341562087d8e178f84756702259ac71, %bb23.1.1 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %panic.i.i48.cont unwind label %cleanup

panic.i.i48.cont:                                 ; preds = %panic.i.i48.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52": ; preds = %bb24
  %_6.i49 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_34 = load i32, ptr %_6.i49, align 4, !noundef !37
  %spec.select65 = tail call i32 @llvm.smax.i32(i32 %_34, i32 0)
  %9 = add nuw i32 %spec.select65, 1
  br label %bb30

bb30:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52", %bb23
  %current.sroa.0.1 = phi i32 [ 1, %bb23 ], [ %9, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52" ]
  %10 = getelementptr inbounds nuw i8, ptr %arr2, i64 4
  %_19.1 = load float, ptr %10, align 4, !noundef !37
  %_16.1 = fcmp oeq float %_17, %_19.1
  br i1 %_16.1, label %bb15.1, label %bb23.1

bb15.1:                                           ; preds = %bb30
  %len.i33.1 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i34.1 = icmp ugt i64 %len.i33.1, 1
  br i1 %_4.i.i34.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1": ; preds = %bb15.1
  %_6.i36.1 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i37.1 = getelementptr inbounds nuw i8, ptr %_6.i36.1, i64 4
  %_24.1 = load i32, ptr %_0.i.i37.1, align 4, !noundef !37
  %_21.1 = icmp sgt i32 %current.sroa.0.1, %_24.1
  br i1 %_21.1, label %bb17.1, label %bb23.1

bb17.1:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1"
  store i32 %current.sroa.0.1, ptr %_0.i.i37.1, align 4
  br label %bb23.1

bb23.1:                                           ; preds = %bb17.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1", %bb30
  %_30.1 = fcmp ule float %_17, %_19.1
  %len.i46.1 = load i64, ptr %4, align 8
  %_4.i.i47.1 = icmp ugt i64 %len.i46.1, 1
  %or.cond = select i1 %_30.1, i1 true, i1 %_4.i.i47.1
  br i1 %or.cond, label %bb30.1, label %panic.i.i48.invoke

bb30.1:                                           ; preds = %bb23.1
  %11 = getelementptr inbounds nuw i8, ptr %arr1, i64 4
  %_17.1 = load float, ptr %11, align 4, !noundef !37
  %_19.181 = load float, ptr %arr2, align 4, !noundef !37
  %_16.182 = fcmp oeq float %_17.1, %_19.181
  br i1 %_16.182, label %bb15.185, label %bb23.192

bb15.185:                                         ; preds = %bb30.1
  %len.i33.183 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i34.184.not = icmp eq i64 %len.i33.183, 0
  br i1 %_4.i.i34.184.not, label %panic.i.i48.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.189"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.189": ; preds = %bb15.185
  %_6.i36.186 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_24.187 = load i32, ptr %_6.i36.186, align 4, !noundef !37
  %_21.188 = icmp slt i32 %_24.187, 1
  br i1 %_21.188, label %bb17.190, label %bb23.192

bb17.190:                                         ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.189"
  store i32 1, ptr %_6.i36.186, align 4
  br label %bb23.192

bb23.192:                                         ; preds = %bb17.190, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.189", %bb30.1
  %_30.191 = fcmp ogt float %_17.1, %_19.181
  br i1 %_30.191, label %bb24.195, label %bb30.197

bb24.195:                                         ; preds = %bb23.192
  %len.i46.193 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i47.194.not = icmp eq i64 %len.i46.193, 0
  br i1 %_4.i.i47.194.not, label %panic.i.i48.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52.196"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52.196": ; preds = %bb24.195
  %_6.i49.1 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_34.1 = load i32, ptr %_6.i49.1, align 4, !noundef !37
  %spec.select65.1 = tail call i32 @llvm.smax.i32(i32 %_34.1, i32 0)
  %12 = add nuw i32 %spec.select65.1, 1
  br label %bb30.197

bb30.197:                                         ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52.196", %bb23.192
  %current.sroa.0.1.1 = phi i32 [ 1, %bb23.192 ], [ %12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit52.196" ]
  %13 = getelementptr inbounds nuw i8, ptr %arr2, i64 4
  %_19.1.1 = load float, ptr %13, align 4, !noundef !37
  %_16.1.1 = fcmp oeq float %_17.1, %_19.1.1
  br i1 %_16.1.1, label %bb15.1.1, label %bb23.1.1

bb15.1.1:                                         ; preds = %bb30.197
  %len.i33.1.1 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i34.1.1 = icmp ugt i64 %len.i33.1.1, 1
  br i1 %_4.i.i34.1.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1.1", label %panic.i.i48.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1.1": ; preds = %bb15.1.1
  %_6.i36.1.1 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i37.1.1 = getelementptr inbounds nuw i8, ptr %_6.i36.1.1, i64 4
  %_24.1.1 = load i32, ptr %_0.i.i37.1.1, align 4, !noundef !37
  %_21.1.1 = icmp sgt i32 %current.sroa.0.1.1, %_24.1.1
  br i1 %_21.1.1, label %bb17.1.1, label %bb23.1.1

bb17.1.1:                                         ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1.1"
  store i32 %current.sroa.0.1.1, ptr %_0.i.i37.1.1, align 4
  br label %bb23.1.1

bb23.1.1:                                         ; preds = %bb17.1.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit39.1.1", %bb30.197
  %_30.1.1 = fcmp ule float %_17.1, %_19.1.1
  %len.i46.1.1 = load i64, ptr %4, align 8
  %_4.i.i47.1.1 = icmp ugt i64 %len.i46.1.1, 1
  %or.cond98 = select i1 %_30.1.1, i1 true, i1 %_4.i.i47.1.1
  br i1 %or.cond98, label %bb30.1.1, label %panic.i.i48.invoke

bb30.1.1:                                         ; preds = %bb23.1.1
  %len.i = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %.not = icmp ult i64 %len.i, 2
  br i1 %.not, label %panic.i.i48.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h42ec2181f988ebddE.exit.1"

terminate:                                        ; preds = %cleanup
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb40:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
