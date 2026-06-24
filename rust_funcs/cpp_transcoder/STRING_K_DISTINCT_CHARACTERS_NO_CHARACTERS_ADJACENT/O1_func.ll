define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %res = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8, !alias.scope !1630
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1630
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8
  %_0.i.i.i35 = icmp sgt i32 %k, 0
  br i1 %_0.i.i.i35, label %bb6, label %bb7

cleanup.loopexit:                                 ; preds = %bb12
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb6
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h562e85210cadfdfbE"(ptr noalias noundef align 8 dereferenceable(24) %res) #27
          to label %bb19 unwind label %terminate

bb6:                                              ; preds = %start, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit
  %spec.select37 = phi i32 [ %spec.select, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ 1, %start ]
  %iter.sroa.0.036 = phi i32 [ %spec.select37, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ 0, %start ]
  %_14 = add nuw i32 %iter.sroa.0.036, 97
  %_13 = and i32 %_14, 255
  %len.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1633, !noundef !37
  %_14.i = icmp sgt i64 %len.i, -1
  call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_13, 128
  %ch_len.sroa.0.0.i = select i1 %_16.i, i64 1, i64 2
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %ch_len.sroa.0.0.i)
          to label %.noexc unwind label %cleanup.loopexit.split-lp

.noexc:                                           ; preds = %bb6
  %_20.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %count.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1633, !noundef !37
  %_21.i = icmp sgt i64 %count.i, -1
  call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb1.i.i

bb12.i.i:                                         ; preds = %.noexc
  %0 = trunc i32 %_14 to i8
  store i8 %0, ptr %_8.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb1.i.i:                                          ; preds = %.noexc
  %_10.i.i = lshr i32 %_13, 6
  %_8.i.i = trunc nuw nsw i32 %_10.i.i to i8
  %1 = trunc i32 %_14 to i8
  %_5.i.i = and i8 %1, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %2 = or disjoint i8 %_8.i.i, -64
  store i8 %2, ptr %_8.i, align 1
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i.i
  %new_len.i = add nuw i64 %len.i, %ch_len.sroa.0.0.i
  store i64 %new_len.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8
  %_0.i.i.i = icmp slt i32 %spec.select37, %k
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select37, %3
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb7:                                              ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %start
  %_19 = sub i32 %n, %k
  %_0.i.i.i1038 = icmp sgt i32 %_19, 0
  br i1 %_0.i.i.i1038, label %bb12, label %bb13

bb12:                                             ; preds = %bb7, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31
  %spec.select3340 = phi i32 [ %spec.select33, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31 ], [ 1, %bb7 ]
  %count.sroa.0.039 = phi i32 [ %spec.store.select, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31 ], [ 0, %bb7 ]
  %_28 = add i32 %count.sroa.0.039, 97
  %_27 = and i32 %_28, 255
  %len.i14 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1636, !noundef !37
  %_14.i15 = icmp sgt i64 %len.i14, -1
  call void @llvm.assume(i1 %_14.i15)
  %_16.i16 = icmp samesign ult i32 %_27, 128
  %ch_len.sroa.0.0.i17 = select i1 %_16.i16, i64 1, i64 2
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %ch_len.sroa.0.0.i17)
          to label %.noexc30 unwind label %cleanup.loopexit

.noexc30:                                         ; preds = %bb12
  %_20.i18 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1636, !nonnull !37, !noundef !37
  %count.i19 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1636, !noundef !37
  %_21.i20 = icmp sgt i64 %count.i19, -1
  call void @llvm.assume(i1 %_21.i20)
  %_8.i21 = getelementptr inbounds nuw i8, ptr %_20.i18, i64 %count.i19
  br i1 %_16.i16, label %bb12.i.i29, label %bb1.i.i22

bb12.i.i29:                                       ; preds = %.noexc30
  %4 = trunc i32 %_28 to i8
  store i8 %4, ptr %_8.i21, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31

bb1.i.i22:                                        ; preds = %.noexc30
  %_10.i.i23 = lshr i32 %_27, 6
  %_8.i.i24 = trunc nuw nsw i32 %_10.i.i23 to i8
  %5 = trunc i32 %_28 to i8
  %_5.i.i25 = and i8 %5, 63
  %last1.i.i26 = or disjoint i8 %_5.i.i25, -128
  %6 = or disjoint i8 %_8.i.i24, -64
  store i8 %6, ptr %_8.i21, align 1
  %_21.i.i27 = getelementptr inbounds nuw i8, ptr %_8.i21, i64 1
  store i8 %last1.i.i26, ptr %_21.i.i27, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31: ; preds = %bb12.i.i29, %bb1.i.i22
  %new_len.i28 = add nuw i64 %len.i14, %ch_len.sroa.0.0.i17
  store i64 %new_len.i28, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1636
  %7 = add i32 %count.sroa.0.039, 1
  %_31 = icmp eq i32 %7, %k
  %spec.store.select = select i1 %_31, i32 0, i32 %7
  %_0.i.i.i10 = icmp slt i32 %spec.select3340, %_19
  %8 = zext i1 %_0.i.i.i10 to i32
  %spec.select33 = add nuw nsw i32 %spec.select3340, %8
  br i1 %_0.i.i.i10, label %bb12, label %bb13

bb13:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit31, %bb7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  ret void

terminate:                                        ; preds = %cleanup
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

bb19:                                             ; preds = %cleanup
  resume { ptr, i32 } %lpad.phi
}
