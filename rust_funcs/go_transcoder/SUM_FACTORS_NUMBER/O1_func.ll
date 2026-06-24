define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #12 {
start:
  %_5 = sitofp i32 %n to float
  %0 = tail call noundef float @llvm.sqrt.f32(float %_5)
  %sqrt_n = tail call i32 @llvm.fptosi.sat.i32.f32(float %0)
  %_0.i.not.i.i14 = icmp slt i32 %sqrt_n, 2
  br i1 %_0.i.not.i.i14, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %sqrt_n, 2
  %iter.sroa.7.120 = zext i1 %.not to i8
  %_0.i3.i.i15.not = icmp eq i32 %sqrt_n, 2
  %iter.sroa.0.119 = select i1 %_0.i3.i.i15.not, i32 2, i32 3
  br label %bb10

bb8:                                              ; preds = %bb10, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1, %bb10 ]
  %_22 = add i32 %n, 1
  %_0 = add i32 %_22, %result.sroa.0.0.lcssa
  ret i32 %_0

bb10:                                             ; preds = %bb7.lr.ph, %bb10
  %_0.sroa.3.0.i.i24 = phi i32 [ 2, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb10 ]
  %iter.sroa.7.123 = phi i8 [ %iter.sroa.7.120, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb10 ]
  %iter.sroa.0.122 = phi i32 [ %iter.sroa.0.119, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb10 ]
  %result.sroa.0.021 = phi i32 [ 0, %bb7.lr.ph ], [ %result.sroa.0.1, %bb10 ]
  %_14 = srem i32 %n, %_0.sroa.3.0.i.i24
  %_20 = sdiv i32 %n, %_0.sroa.3.0.i.i24
  %_13 = icmp eq i32 %_14, 0
  %_19 = icmp eq i32 %_0.sroa.3.0.i.i24, %_20
  %1 = add i32 %_0.sroa.3.0.i.i24, %result.sroa.0.021
  %2 = select i1 %_19, i32 0, i32 %_20
  %spec.select25 = add i32 %1, %2
  %result.sroa.0.1 = select i1 %_13, i32 %spec.select25, i32 %result.sroa.0.021
  %_10.i.i = trunc nuw i8 %iter.sroa.7.123 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.122, %sqrt_n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.122, %sqrt_n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.122, %spec.select
  %3 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %3, i8 %iter.sroa.7.123, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.122
  br i1 %or.cond, label %bb8, label %bb10
}
