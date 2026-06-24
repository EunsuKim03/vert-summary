define void @f_gold(ptr dead_on_unwind noalias noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #13 personality ptr @rust_eh_personality {
start:
  %_27 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %result = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %result)
  store i64 0, ptr %result, align 8, !alias.scope !1664
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %result, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1664
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %result, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1664
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  br label %bb2.outer

cleanup.i.i:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE.exit27"
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE.exit27"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb32 unwind label %terminate

bb2:                                              ; preds = %bb2.outer, %bb18
  %i.sroa.0.0.in = phi i64 [ %i.sroa.0.0, %bb18 ], [ %i.sroa.0.0.in.ph, %bb2.outer ]
  %i.sroa.0.0 = add i64 %i.sroa.0.0.in, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  store ptr %_6.i.i, ptr %_14, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_12 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2c1ce89b8e77138cE(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %i.sroa.0.0)
  switch i32 %_12, label %bb18 [
    i32 1114112, label %bb2.i16.invoke
    i32 32, label %bb8
  ], !prof !1667

cleanup2.loopexit:                                ; preds = %bb2.i35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2.loopexit.split-lp.loopexit:              ; preds = %bb16
  %lpad.loopexit44 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2.loopexit.split-lp.loopexit.split-lp:     ; preds = %bb2.i16.invoke
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup2.loopexit.split-lp.loopexit, %cleanup2.loopexit.split-lp.loopexit.split-lp, %cleanup2.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup2.loopexit ], [ %lpad.loopexit44, %cleanup2.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp45, %cleanup2.loopexit.split-lp.loopexit.split-lp ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i23" unwind label %cleanup.i.i20

cleanup.i.i20:                                    ; preds = %cleanup2
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %terminate.body unwind label %terminate.i.i21

terminate.i.i21:                                  ; preds = %cleanup.i.i20
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i23": ; preds = %cleanup2
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE.exit27" unwind label %terminate

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3691f2c42b37fa7dE.exit27": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i23"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i" unwind label %cleanup.i.i

bb2.i16.invoke:                                   ; preds = %bb2, %bb10
  %8 = phi ptr [ @alloc_282d241064cce51e779272cc44ee7eb0, %bb10 ], [ @alloc_0710c1f28d859b0a65b6aaa2900f8b4f, %bb2 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #26
          to label %bb2.i16.cont unwind label %cleanup2.loopexit.split-lp.loopexit.split-lp

bb2.i16.cont:                                     ; preds = %bb2.i16.invoke
  unreachable

bb18:                                             ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  br label %bb2

bb8:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  %_19.not47 = icmp eq i64 %i.sroa.0.0.in, %i.sroa.0.0.in.ph
  br i1 %_19.not47, label %bb16, label %bb10

bb16:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43, %bb8
  %len.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1668, !noundef !15
  %_14.i = icmp sgt i64 %len.i, -1
  call void @llvm.assume(i1 %_14.i)
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit unwind label %cleanup2.loopexit.split-lp.loopexit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb16
  %_20.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1668, !nonnull !15, !noundef !15
  %count.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1668, !noundef !15
  %_21.i = icmp sgt i64 %count.i, -1
  call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  store i8 32, ptr %_8.i, align 1
  %new_len.i = add nuw i64 %len.i, 1
  store i64 %new_len.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1668
  br label %bb2.outer

bb2.outer:                                        ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %start
  %i.sroa.0.0.in.ph = phi i64 [ %i.sroa.0.0, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ %_0.i, %start ]
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1671, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1671, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb2

bb10:                                             ; preds = %bb8, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43
  %start1.sroa.0.148 = phi i64 [ %start1.sroa.0.1, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43 ], [ %i.sroa.0.0.in, %bb8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_27)
  %_6.i.i30 = load ptr, ptr %1, align 8, !alias.scope !1676, !nonnull !15, !noundef !15
  %len.i.i31 = load i64, ptr %0, align 8, !alias.scope !1676, !noundef !15
  %_7.i32 = getelementptr inbounds nuw i8, ptr %_6.i.i30, i64 %len.i.i31
  store ptr %_6.i.i30, ptr %_27, align 8
  store ptr %_7.i32, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_25 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h2c1ce89b8e77138cE(ptr noalias noundef align 8 dereferenceable(16) %_27, i64 noundef %start1.sroa.0.148)
  %.not.i = icmp eq i32 %_25, 1114112
  br i1 %.not.i, label %bb2.i16.invoke, label %bb14, !prof !1064

bb14:                                             ; preds = %bb10
  %len.i33 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1681, !noundef !15
  %_14.i34 = icmp sgt i64 %len.i33, -1
  call void @llvm.assume(i1 %_14.i34)
  %_16.i = icmp samesign ult i32 %_25, 128
  br i1 %_16.i, label %bb2.i35, label %bb3.i

bb3.i:                                            ; preds = %bb14
  %_17.i = icmp samesign ult i32 %_25, 2048
  br i1 %_17.i, label %bb2.i35, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %_25, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i35

bb2.i35:                                          ; preds = %bb4.i, %bb3.i, %bb14
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb14 ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %result, i64 noundef %ch_len.sroa.0.0.i)
          to label %.noexc42 unwind label %cleanup2.loopexit

.noexc42:                                         ; preds = %bb2.i35
  %_20.i36 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1681, !nonnull !15, !noundef !15
  %count.i37 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1681, !noundef !15
  %_21.i38 = icmp sgt i64 %count.i37, -1
  call void @llvm.assume(i1 %_21.i38)
  %_8.i39 = getelementptr inbounds nuw i8, ptr %_20.i36, i64 %count.i37
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %.noexc42
  %_29.i.i = icmp samesign ult i32 %_25, 2048
  %9 = trunc i32 %_25 to i8
  %_5.i.i = and i8 %9, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %_25, 6
  %10 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %10, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %_25, 12
  %11 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %11, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %_25, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i.i41, label %bb2.i.i

bb12.i.i:                                         ; preds = %.noexc42
  %12 = trunc nuw nsw i32 %_25 to i8
  store i8 %12, ptr %_8.i39, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_25, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i.i41:                                        ; preds = %bb7.i.i
  %13 = or disjoint i8 %10, -64
  store i8 %13, ptr %_8.i39, align 1
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i39, align 1
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43

bb3.i.i:                                          ; preds = %bb2.i.i
  %14 = or disjoint i8 %11, -32
  store i8 %14, ptr %_8.i39, align 1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i39, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit43: ; preds = %bb12.i.i, %bb1.i.i41, %bb4.i.i, %bb3.i.i
  %new_len.i40 = add nuw i64 %ch_len.sroa.0.0.i, %len.i33
  store i64 %new_len.i40, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1681
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_27)
  %start1.sroa.0.1 = add i64 %start1.sroa.0.148, 1
  %_19.not = icmp eq i64 %start1.sroa.0.1, %i.sroa.0.0.in.ph
  br i1 %_19.not, label %bb16, label %bb10

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i23", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i"
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %terminate, %cleanup.i.i20, %cleanup.i.i
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb32:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf2498841f7fdff7bE.exit.i"
  resume { ptr, i32 } %lpad.phi
}
