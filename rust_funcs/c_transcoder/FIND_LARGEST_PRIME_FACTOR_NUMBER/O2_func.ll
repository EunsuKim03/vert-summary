define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %1 = and i32 %0, 1
  %_2.peel = icmp eq i32 %1, 0
  br i1 %_2.peel, label %bb1, label %bb3

bb1:                                              ; preds = %start, %bb1
  %n.sroa.0.0.in = phi i32 [ %n.sroa.0.0, %bb1 ], [ %0, %start ]
  %n.sroa.0.0 = ashr exact i32 %n.sroa.0.0.in, 1
  %2 = and i32 %n.sroa.0.0.in, 2
  %_2 = icmp eq i32 %2, 0
  br i1 %_2, label %bb1, label %bb3, !llvm.loop !1031

bb3:                                              ; preds = %bb1, %start
  %max_prime.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ 2, %bb1 ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %n.sroa.0.0, %bb1 ]
  %_9 = sitofp i32 %n.sroa.0.0.lcssa to float
  %3 = tail call float @llvm.sqrt.f32(float %_9)
  %_7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %_0.i.i22 = icmp sgt i32 %_7, 3
  br i1 %_0.i.i22, label %bb9.lr.ph, label %bb7

bb4.loopexit:                                     ; preds = %bb10, %bb10.peel
  %n.sroa.0.221.lcssa32 = phi i32 [ %n.sroa.0.125, %bb10.peel ], [ %n.sroa.0.221, %bb10 ]
  %max_prime.sroa.0.320.lcssa30 = phi i32 [ %max_prime.sroa.0.124, %bb10.peel ], [ %wrapped.i.i26, %bb10 ]
  %wrapped.i.i = or disjoint i32 %storemerge.i27, 1
  %_0.i.i = icmp slt i32 %wrapped.i.i, %_7
  %4 = add i32 %storemerge.i27, 2
  br i1 %_0.i.i, label %bb9.lr.ph, label %bb7

bb9.lr.ph:                                        ; preds = %bb3, %bb4.loopexit
  %storemerge.i27 = phi i32 [ %4, %bb4.loopexit ], [ 4, %bb3 ]
  %wrapped.i.i26 = phi i32 [ %wrapped.i.i, %bb4.loopexit ], [ 3, %bb3 ]
  %n.sroa.0.125 = phi i32 [ %n.sroa.0.221.lcssa32, %bb4.loopexit ], [ %n.sroa.0.0.lcssa, %bb3 ]
  %max_prime.sroa.0.124 = phi i32 [ %max_prime.sroa.0.320.lcssa30, %bb4.loopexit ], [ %max_prime.sroa.0.0.lcssa, %bb3 ]
  %_19 = icmp eq i32 %wrapped.i.i26, -1
  %_20.peel = icmp eq i32 %n.sroa.0.125, -2147483648
  %_21.peel = and i1 %_19, %_20.peel
  br i1 %_21.peel, label %panic1, label %bb10.peel

bb10.peel:                                        ; preds = %bb9.lr.ph
  %_16.peel = srem i32 %n.sroa.0.125, %wrapped.i.i26
  %_15.peel = icmp eq i32 %_16.peel, 0
  br i1 %_15.peel, label %bb9, label %bb4.loopexit

bb7:                                              ; preds = %bb4.loopexit, %bb3
  %max_prime.sroa.0.1.lcssa = phi i32 [ %max_prime.sroa.0.0.lcssa, %bb3 ], [ %max_prime.sroa.0.320.lcssa30, %bb4.loopexit ]
  %n.sroa.0.1.lcssa = phi i32 [ %n.sroa.0.0.lcssa, %bb3 ], [ %n.sroa.0.221.lcssa32, %bb4.loopexit ]
  %_24 = icmp sgt i32 %n.sroa.0.1.lcssa, 2
  %spec.select = select i1 %_24, i32 %n.sroa.0.1.lcssa, i32 %max_prime.sroa.0.1.lcssa
  ret i32 %spec.select

bb9:                                              ; preds = %bb10.peel, %bb10
  %n.sroa.0.125.pn = phi i32 [ %n.sroa.0.221, %bb10 ], [ %n.sroa.0.125, %bb10.peel ]
  %n.sroa.0.221 = sdiv i32 %n.sroa.0.125.pn, %wrapped.i.i26
  %_20 = icmp eq i32 %n.sroa.0.221, -2147483648
  %_21 = and i1 %_19, %_20
  br i1 %_21, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  %_16 = srem i32 %n.sroa.0.221, %wrapped.i.i26
  %_15 = icmp eq i32 %_16, 0
  br i1 %_15, label %bb9, label %bb4.loopexit

panic1:                                           ; preds = %bb9.lr.ph, %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f85c3cb56e4f198eaeb8eda8ae1b45d7) #17
  unreachable
}
