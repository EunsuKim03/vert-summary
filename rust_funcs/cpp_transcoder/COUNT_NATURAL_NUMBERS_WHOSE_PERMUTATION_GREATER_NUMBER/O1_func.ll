define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %stack = alloca [32 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %stack, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %stack, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %stack, i64 24
  %3 = getelementptr inbounds nuw i8, ptr %stack, i64 24
  br label %bb6

bb6:                                              ; preds = %start, %bb14
  %_0.sroa.3.0.i.i65 = phi i32 [ 1, %start ], [ %_0.sroa.3.0.i.i, %bb14 ]
  %iter.sroa.7.164 = phi i8 [ 0, %start ], [ %iter.sroa.7.1, %bb14 ]
  %iter.sroa.0.163 = phi i32 [ 2, %start ], [ %iter.sroa.0.1, %bb14 ]
  %result.sroa.0.062 = phi i32 [ 0, %start ], [ %result.sroa.0.2.lcssa, %bb14 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stack)
  store i64 0, ptr %stack, align 8, !alias.scope !1637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !1637
  store ptr inttoptr (i64 4 to ptr), ptr %1, align 8, !alias.scope !1637
  %_10.not = icmp sgt i32 %_0.sroa.3.0.i.i65, %n
  br i1 %_10.not, label %bb11, label %bb9

bb7:                                              ; preds = %bb14
  ret i32 %result.sroa.0.2.lcssa

bb11:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit", %bb6
  %result.sroa.0.1 = phi i32 [ %6, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit" ], [ %result.sroa.0.062, %bb6 ]
  %_2.i45 = load i64, ptr %3, align 8, !alias.scope !1640, !noundef !37
  %_0.i46 = icmp eq i64 %_2.i45, 0
  br i1 %_0.i46, label %bb14, label %bb15

bb9:                                              ; preds = %bb6
  %_8.i.i = load i64, ptr %2, align 8, !alias.scope !1643, !noundef !37
  %_3.i.i = icmp eq i64 %_8.i.i, 0
  br i1 %_3.i.i, label %bb1.i.i, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit"

bb1.i.i:                                          ; preds = %bb9
; invoke alloc::collections::vec_deque::VecDeque<T,A>::grow
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h458206cee1aa18e5E"(ptr noalias noundef align 8 dereferenceable(32) %stack)
          to label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit" unwind label %cleanup.loopexit.split-lp

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit": ; preds = %bb1.i.i, %bb9
  %len.i.i = load i64, ptr %2, align 8, !alias.scope !1643, !noundef !37
  %4 = add i64 %len.i.i, 1
  store i64 %4, ptr %2, align 8, !alias.scope !1643
  %idx.i.i = load i64, ptr %0, align 8, !alias.scope !1643, !noundef !37
  %logical_index.i.i = add i64 %idx.i.i, %len.i.i
  %self2.i.i = load i64, ptr %stack, align 8, !range !1624, !alias.scope !1643, !noundef !37
  %_21.not.i.i = icmp ult i64 %logical_index.i.i, %self2.i.i
  %5 = select i1 %_21.not.i.i, i64 0, i64 %self2.i.i
  %off.sroa.0.0.i.i = sub nuw i64 %logical_index.i.i, %5
  %_24.i.i = load ptr, ptr %1, align 8, !alias.scope !1643, !nonnull !37, !noundef !37
  %_22.i.i = getelementptr inbounds nuw i32, ptr %_24.i.i, i64 %off.sroa.0.0.i.i
  store i32 %_0.sroa.3.0.i.i65, ptr %_22.i.i, align 4
  %6 = add i32 %result.sroa.0.062, 1
  br label %bb11

cleanup.loopexit:                                 ; preds = %bb1.i.i34
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb1.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %stack, i64 noundef 4, i64 noundef 4)
          to label %bb29 unwind label %terminate

bb12.loopexit:                                    ; preds = %bb26
  %_2.i = load i64, ptr %3, align 8, !alias.scope !1640, !noundef !37
  %_0.i = icmp eq i64 %_2.i, 0
  br i1 %_0.i, label %bb14, label %bb15

bb15:                                             ; preds = %bb11, %bb12.loopexit
  %_2.i48 = phi i64 [ %_2.i, %bb12.loopexit ], [ %_2.i45, %bb11 ]
  %result.sroa.0.247 = phi i32 [ %result.sroa.0.4, %bb12.loopexit ], [ %result.sroa.0.1, %bb11 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %7 = add i64 %_2.i48, -1
  store i64 %7, ptr %3, align 8, !alias.scope !1648
  %self1.i = load i64, ptr %stack, align 8, !range !1624, !alias.scope !1648, !noundef !37
  %cond.i = icmp ult i64 %7, %self1.i
  call void @llvm.assume(i1 %cond.i)
  %idx2.i = load i64, ptr %0, align 8, !alias.scope !1648, !noundef !37
  %logical_index.i = add i64 %idx2.i, %7
  %_23.not.i = icmp ult i64 %logical_index.i, %self1.i
  %8 = select i1 %_23.not.i, i64 0, i64 %self1.i
  %off.sroa.0.0.i = sub nuw i64 %logical_index.i, %8
  %_27.i = load ptr, ptr %1, align 8, !alias.scope !1648, !nonnull !37, !noundef !37
  %_25.i = getelementptr inbounds nuw i32, ptr %_27.i, i64 %off.sroa.0.0.i
  %_6.i = load i32, ptr %_25.i, align 4, !noalias !1648, !noundef !37
  %_20 = srem i32 %_6.i, 10
  %_27 = mul i32 %_6.i, 10
  %_0.i3.i.i17.not55 = icmp eq i32 %_20, 9
  %9 = add nsw i32 %_20, 1
  %spec.select3856 = select i1 %_0.i3.i.i17.not55, i32 9, i32 %9
  %spec.select3957 = zext i1 %_0.i3.i.i17.not55 to i8
  br label %bb22

bb14:                                             ; preds = %bb12.loopexit, %bb11
  %result.sroa.0.2.lcssa = phi i32 [ %result.sroa.0.1, %bb11 ], [ %result.sroa.0.4, %bb12.loopexit ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %stack, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stack)
  %_10.i.i = trunc nuw i8 %iter.sroa.7.164 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.163, 9
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i.not = icmp eq i32 %iter.sroa.0.163, 9
  %10 = add nsw i32 %iter.sroa.0.163, 1
  %spec.select = select i1 %_0.i3.i.i.not, i32 9, i32 %10
  %spec.select37 = select i1 %_0.i3.i.i.not, i8 1, i8 %iter.sroa.7.164
  %iter.sroa.0.1 = select i1 %or.cond, i32 %iter.sroa.0.163, i32 %spec.select
  %iter.sroa.7.1 = select i1 %or.cond, i8 %iter.sroa.7.164, i8 %spec.select37
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.163
  br i1 %or.cond, label %bb7, label %bb6

bb22:                                             ; preds = %bb15, %bb26
  %iter1.sroa.7.161 = phi i8 [ %spec.select3957, %bb15 ], [ %iter1.sroa.7.1, %bb26 ]
  %iter1.sroa.0.160 = phi i32 [ %spec.select3856, %bb15 ], [ %iter1.sroa.0.1, %bb26 ]
  %result.sroa.0.359 = phi i32 [ %result.sroa.0.247, %bb15 ], [ %result.sroa.0.4, %bb26 ]
  %iter1.sroa.0.058 = phi i32 [ %_20, %bb15 ], [ %iter1.sroa.0.160, %bb26 ]
  %x = add i32 %iter1.sroa.0.058, %_27
  %_28.not = icmp sgt i32 %x, %n
  br i1 %_28.not, label %bb26, label %bb24

bb26:                                             ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit36", %bb22
  %result.sroa.0.4 = phi i32 [ %14, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit36" ], [ %result.sroa.0.359, %bb22 ]
  %_10.i.i10 = trunc nuw i8 %iter1.sroa.7.161 to i1
  %_0.i.not.i.i15 = icmp sgt i32 %iter1.sroa.0.160, 9
  %or.cond40 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  %_0.i3.i.i17.not = icmp eq i32 %iter1.sroa.0.160, 9
  %11 = add nsw i32 %iter1.sroa.0.160, 1
  %spec.select38 = select i1 %_0.i3.i.i17.not, i32 9, i32 %11
  %spec.select39 = select i1 %_0.i3.i.i17.not, i8 1, i8 %iter1.sroa.7.161
  %iter1.sroa.0.1 = select i1 %or.cond40, i32 %iter1.sroa.0.160, i32 %spec.select38
  %iter1.sroa.7.1 = select i1 %or.cond40, i8 %iter1.sroa.7.161, i8 %spec.select39
  br i1 %or.cond40, label %bb12.loopexit, label %bb22

bb24:                                             ; preds = %bb22
  %_8.i.i23 = load i64, ptr %3, align 8, !alias.scope !1651, !noundef !37
  %self1.i.i24 = load i64, ptr %stack, align 8, !range !1624, !alias.scope !1651, !noundef !37
  %_3.i.i25 = icmp eq i64 %_8.i.i23, %self1.i.i24
  br i1 %_3.i.i25, label %bb1.i.i34, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit36"

bb1.i.i34:                                        ; preds = %bb24
; invoke alloc::collections::vec_deque::VecDeque<T,A>::grow
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h458206cee1aa18e5E"(ptr noalias noundef align 8 dereferenceable(32) %stack)
          to label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit36" unwind label %cleanup.loopexit

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9push_back17h32f7659b2c8c162fE.exit36": ; preds = %bb1.i.i34, %bb24
  %len.i.i26 = load i64, ptr %3, align 8, !alias.scope !1651, !noundef !37
  %12 = add i64 %len.i.i26, 1
  store i64 %12, ptr %3, align 8, !alias.scope !1651
  %idx.i.i27 = load i64, ptr %0, align 8, !alias.scope !1651, !noundef !37
  %logical_index.i.i28 = add i64 %idx.i.i27, %len.i.i26
  %self2.i.i29 = load i64, ptr %stack, align 8, !range !1624, !alias.scope !1651, !noundef !37
  %_21.not.i.i30 = icmp ult i64 %logical_index.i.i28, %self2.i.i29
  %13 = select i1 %_21.not.i.i30, i64 0, i64 %self2.i.i29
  %off.sroa.0.0.i.i31 = sub nuw i64 %logical_index.i.i28, %13
  %_24.i.i32 = load ptr, ptr %1, align 8, !alias.scope !1651, !nonnull !37, !noundef !37
  %_22.i.i33 = getelementptr inbounds nuw i32, ptr %_24.i.i32, i64 %off.sroa.0.0.i.i31
  store i32 %x, ptr %_22.i.i33, align 4
  %14 = add i32 %result.sroa.0.359, 1
  br label %bb26

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb29:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
