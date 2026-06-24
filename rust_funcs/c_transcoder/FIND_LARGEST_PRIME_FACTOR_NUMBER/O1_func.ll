define noundef i32 @f_gold(i32 noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = and i32 %0, 1
  %_2.peel = icmp eq i32 %1, 0
  br i1 %_2.peel, label %bb1, label %bb3

bb1:                                              ; preds = %start, %bb1
  %n.sroa.0.0.in = phi i32 [ %n.sroa.0.0, %bb1 ], [ %0, %start ]
  %n.sroa.0.0 = ashr exact i32 %n.sroa.0.0.in, 1
  %2 = and i32 %n.sroa.0.0.in, 2
  %_2 = icmp eq i32 %2, 0
  br i1 %_2, label %bb1, label %bb3, !llvm.loop !1630

bb3:                                              ; preds = %bb1, %start
  %max_prime.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ 2, %bb1 ]
  %n.sroa.0.0.lcssa = phi i32 [ %0, %start ], [ %n.sroa.0.0, %bb1 ]
  %_10 = sitofp i32 %n.sroa.0.0.lcssa to float
  %3 = tail call noundef float @llvm.sqrt.f32(float %_10)
  %_8 = tail call i32 @llvm.fptosi.sat.i32.f32(float %3)
  %_0.i.i.i.i.i22 = icmp sgt i32 %_8, 3
  br i1 %_0.i.i.i.i.i22, label %bb12.preheader, label %bb11

bb7.loopexit:                                     ; preds = %bb14, %bb14.peel
  %n.sroa.0.221.lcssa32 = phi i32 [ %n.sroa.0.125, %bb14.peel ], [ %n.sroa.0.221, %bb14 ]
  %max_prime.sroa.0.320.lcssa30 = phi i32 [ %max_prime.sroa.0.124, %bb14.peel ], [ %wrapped.i.i.i.i.i26, %bb14 ]
  %wrapped.i.i.i.i.i = add i32 %storemerge.i.i.i.i27, 1
  %_7.not.i.i.i.i.i = icmp ne i32 %storemerge.i.i.i.i27, 2147483647
  %_0.i.i.i.i.i = icmp slt i32 %wrapped.i.i.i.i.i, %_8
  %or.cond.i.i.i.i = and i1 %_7.not.i.i.i.i.i, %_0.i.i.i.i.i
  %4 = add i32 %storemerge.i.i.i.i27, 2
  %storemerge.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 %4, i32 %_8
  br i1 %or.cond.i.i.i.i, label %bb12.preheader, label %bb11

bb12.preheader:                                   ; preds = %bb3, %bb7.loopexit
  %storemerge.i.i.i.i27 = phi i32 [ %storemerge.i.i.i.i, %bb7.loopexit ], [ 4, %bb3 ]
  %wrapped.i.i.i.i.i26 = phi i32 [ %wrapped.i.i.i.i.i, %bb7.loopexit ], [ 3, %bb3 ]
  %n.sroa.0.125 = phi i32 [ %n.sroa.0.221.lcssa32, %bb7.loopexit ], [ %n.sroa.0.0.lcssa, %bb3 ]
  %max_prime.sroa.0.124 = phi i32 [ %max_prime.sroa.0.320.lcssa30, %bb7.loopexit ], [ %max_prime.sroa.0.0.lcssa, %bb3 ]
  %_20 = icmp eq i32 %wrapped.i.i.i.i.i26, 0
  br i1 %_20, label %panic, label %bb13.lr.ph

bb13.lr.ph:                                       ; preds = %bb12.preheader
  %_21 = icmp eq i32 %wrapped.i.i.i.i.i26, -1
  %_22.peel = icmp eq i32 %n.sroa.0.125, -2147483648
  %_23.peel = and i1 %_21, %_22.peel
  br i1 %_23.peel, label %panic1, label %bb14.peel

bb14.peel:                                        ; preds = %bb13.lr.ph
  %_18.peel = srem i32 %n.sroa.0.125, %wrapped.i.i.i.i.i26
  %_17.peel = icmp eq i32 %_18.peel, 0
  br i1 %_17.peel, label %bb13, label %bb7.loopexit

bb11:                                             ; preds = %bb7.loopexit, %bb3
  %max_prime.sroa.0.1.lcssa = phi i32 [ %max_prime.sroa.0.0.lcssa, %bb3 ], [ %max_prime.sroa.0.320.lcssa30, %bb7.loopexit ]
  %n.sroa.0.1.lcssa = phi i32 [ %n.sroa.0.0.lcssa, %bb3 ], [ %n.sroa.0.221.lcssa32, %bb7.loopexit ]
  %_26 = icmp sgt i32 %n.sroa.0.1.lcssa, 2
  %spec.select = select i1 %_26, i32 %n.sroa.0.1.lcssa, i32 %max_prime.sroa.0.1.lcssa
  ret i32 %spec.select

bb13:                                             ; preds = %bb14.peel, %bb14
  %n.sroa.0.125.pn = phi i32 [ %n.sroa.0.221, %bb14 ], [ %n.sroa.0.125, %bb14.peel ]
  %n.sroa.0.221 = sdiv i32 %n.sroa.0.125.pn, %wrapped.i.i.i.i.i26
  %_22 = icmp eq i32 %n.sroa.0.221, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic1, label %bb14

panic:                                            ; preds = %bb12.preheader
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f85c3cb56e4f198eaeb8eda8ae1b45d7) #23
  unreachable

bb14:                                             ; preds = %bb13
  %_18 = srem i32 %n.sroa.0.221, %wrapped.i.i.i.i.i26
  %_17 = icmp eq i32 %_18, 0
  br i1 %_17, label %bb13, label %bb7.loopexit

panic1:                                           ; preds = %bb13.lr.ph, %bb13
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f85c3cb56e4f198eaeb8eda8ae1b45d7) #23
  unreachable
}
