define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_2 = icmp samesign ugt i64 %_0.i, 9
  br i1 %_2, label %bb47, label %bb6.preheader

bb6.preheader:                                    ; preds = %start
  %_0.i.i.i207 = icmp samesign ugt i64 %_0.i, 1
  br i1 %_0.i.i.i207, label %bb9.lr.ph, label %bb10

bb9.lr.ph:                                        ; preds = %bb6.preheader
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_8.i = load ptr, ptr %1, align 8, !nonnull !37
  br label %bb9

cleanup:                                          ; preds = %bb3.i.i93.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7865312a56f42f72E"(ptr noalias noundef align 8 dereferenceable(24) %s) #28
          to label %common.resume unwind label %terminate

bb6.loopexit:                                     ; preds = %bb13.loopexit, %bb9
  %_0.i.i.i = icmp ult i64 %spec.select211, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select211, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb10

bb9:                                              ; preds = %bb9.lr.ph, %bb6.loopexit
  %spec.select211 = phi i64 [ 2, %bb9.lr.ph ], [ %spec.select, %bb6.loopexit ]
  %iter.sroa.0.0210 = phi i64 [ 1, %bb9.lr.ph ], [ %spec.select211, %bb6.loopexit ]
  %_16 = add nuw nsw i64 %iter.sroa.0.0210, 1
  %_0.i.i.i13202 = icmp ult i64 %_16, %_0.i
  br i1 %_0.i.i.i13202, label %bb15.lr.ph, label %bb6.loopexit

bb15.lr.ph:                                       ; preds = %bb9
  %spec.select169204 = add nuw i64 %iter.sroa.0.0210, 2
  %3 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.0210
  %4 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.0210
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter.sroa.0.0210
  br label %bb15

bb10:                                             ; preds = %bb6.loopexit, %bb6.preheader
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb48 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb10
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i156, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %5, %cleanup.i.i ], [ %20, %cleanup.i.i156 ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb48:                                             ; preds = %bb10, %bb47
  %_0.sroa.0.0 = phi i32 [ 1, %bb47 ], [ 0, %bb10 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0

bb13.loopexit:                                    ; preds = %bb46, %bb15
  %_0.i.i.i13 = icmp ult i64 %spec.select169206, %_0.i
  %_0.i1.i.i16 = zext i1 %_0.i.i.i13 to i64
  %spec.select169 = add nuw i64 %spec.select169206, %_0.i1.i.i16
  br i1 %_0.i.i.i13, label %bb15, label %bb6.loopexit

bb15:                                             ; preds = %bb15.lr.ph, %bb13.loopexit
  %spec.select169206 = phi i64 [ %spec.select169204, %bb15.lr.ph ], [ %spec.select169, %bb13.loopexit ]
  %iter1.sroa.0.0205 = phi i64 [ %_16, %bb15.lr.ph ], [ %spec.select169206, %bb13.loopexit ]
  %_26 = add nuw nsw i64 %iter1.sroa.0.0205, 1
  %_0.i.i.i23197 = icmp ult i64 %_26, %_0.i
  br i1 %_0.i.i.i23197, label %bb21.lr.ph, label %bb13.loopexit

bb21.lr.ph:                                       ; preds = %bb15
  %spec.select171199 = add nuw i64 %iter1.sroa.0.0205, 2
  %self2.i.i.i = load i8, ptr %3, align 1, !alias.scope !1633, !noalias !1638, !noundef !37
  %7 = icmp slt i8 %self2.i.i.i, -64
  %_3.not.i.i.i = icmp ugt i64 %iter.sroa.0.0210, %iter1.sroa.0.0205
  %8 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter1.sroa.0.0205
  %new_len.i.i.i = sub nuw nsw i64 %iter1.sroa.0.0205, %iter.sroa.0.0210
  %9 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter1.sroa.0.0205
  %data.i.i.i70 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter1.sroa.0.0205
  br label %bb21

bb21:                                             ; preds = %bb21.lr.ph, %bb46
  %spec.select171201 = phi i64 [ %spec.select171199, %bb21.lr.ph ], [ %spec.select171, %bb46 ]
  %iter2.sroa.0.0200 = phi i64 [ %_26, %bb21.lr.ph ], [ %spec.select171201, %bb46 ]
  br i1 %7, label %bb3.i.i93.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit": ; preds = %bb21
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30", label %bb12.i.i.i

bb12.i.i.i:                                       ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit"
  %self.i.i.i = load i8, ptr %4, align 1, !alias.scope !1643, !noalias !1648, !noundef !37
  %10 = icmp sgt i8 %self.i.i.i, -65
  br i1 %10, label %bb18.i.i.i42, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30"

bb18.i.i.i42:                                     ; preds = %bb12.i.i.i
  %self2.i.i.i43 = load i8, ptr %8, align 1, !alias.scope !1643, !noalias !1648, !noundef !37
  %11 = icmp sgt i8 %self2.i.i.i43, -65
  %spec.select227 = select i1 %11, i64 %new_len.i.i.i, i64 undef
  %spec.select228 = select i1 %11, ptr %data.i.i.i, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30": ; preds = %bb18.i.i.i42, %bb12.i.i.i, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit"
  %_0.sroa.3.0.i.i.i31 = phi i64 [ undef, %bb12.i.i.i ], [ undef, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit" ], [ %spec.select227, %bb18.i.i.i42 ]
  %_0.sroa.0.0.i.i.i32 = phi ptr [ null, %bb12.i.i.i ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit" ], [ %spec.select228, %bb18.i.i.i42 ]
  %.not.i.i33 = icmp eq ptr %_0.sroa.0.0.i.i.i32, null
  br i1 %.not.i.i33, label %bb3.i.i93.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30"
  %_3.not.i.i.i48 = icmp ugt i64 %iter1.sroa.0.0205, %iter2.sroa.0.0200
  br i1 %_3.not.i.i.i48, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56", label %bb12.i.i.i73

bb12.i.i.i73:                                     ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45"
  %self.i.i.i74 = load i8, ptr %9, align 1, !alias.scope !1653, !noalias !1658, !noundef !37
  %12 = icmp sgt i8 %self.i.i.i74, -65
  br i1 %12, label %bb18.i.i.i71, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56"

bb18.i.i.i71:                                     ; preds = %bb12.i.i.i73
  %13 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter2.sroa.0.0200
  %self2.i.i.i72 = load i8, ptr %13, align 1, !alias.scope !1653, !noalias !1658, !noundef !37
  %14 = icmp sgt i8 %self2.i.i.i72, -65
  %new_len.i.i.i69 = sub nuw i64 %iter2.sroa.0.0200, %iter1.sroa.0.0205
  %spec.select229 = select i1 %14, i64 %new_len.i.i.i69, i64 undef
  %spec.select230 = select i1 %14, ptr %data.i.i.i70, ptr null
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56": ; preds = %bb18.i.i.i71, %bb12.i.i.i73, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45"
  %_0.sroa.3.0.i.i.i57 = phi i64 [ undef, %bb12.i.i.i73 ], [ undef, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45" ], [ %spec.select229, %bb18.i.i.i71 ]
  %_0.sroa.0.0.i.i.i58 = phi ptr [ null, %bb12.i.i.i73 ], [ null, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit45" ], [ %spec.select230, %bb18.i.i.i71 ]
  %.not.i.i59 = icmp eq ptr %_0.sroa.0.0.i.i.i58, null
  br i1 %.not.i.i59, label %bb3.i.i93.invoke, label %bb12.i.i.i106, !prof !1033

bb12.i.i.i106:                                    ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56"
  %15 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter2.sroa.0.0200
  %self.i.i.i107 = load i8, ptr %15, align 1, !alias.scope !1663, !noalias !1668, !noundef !37
  %16 = icmp slt i8 %self.i.i.i107, -64
  %new_len.i.i.i102 = sub nuw i64 %_0.i, %iter2.sroa.0.0200
  %data.i.i.i103 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %iter2.sroa.0.0200
  %_0.sroa.3.0.i.i.i90 = select i1 %16, i64 undef, i64 %new_len.i.i.i102
  br i1 %16, label %bb3.i.i93.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit109", !prof !1033

bb3.i.i93.invoke:                                 ; preds = %bb12.i.i.i106, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30", %bb21
  %17 = phi i64 [ 0, %bb21 ], [ %iter.sroa.0.0210, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30" ], [ %iter1.sroa.0.0205, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56" ], [ %iter2.sroa.0.0200, %bb12.i.i.i106 ]
  %18 = phi i64 [ %iter.sroa.0.0210, %bb21 ], [ %iter1.sroa.0.0205, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30" ], [ %iter2.sroa.0.0200, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56" ], [ %_0.i, %bb12.i.i.i106 ]
  %19 = phi ptr [ @alloc_ab112f6bb78c713670e154c9f09efd29, %bb21 ], [ @alloc_77249349fcd20cd8e1708e5536e781c6, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i30" ], [ @alloc_b2ee79cacfe2ec25045bf0b72381bf4b, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i56" ], [ @alloc_dbaea0828119170b70d6eb0bb5cf50e1, %bb12.i.i.i106 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %_0.i, i64 noundef %17, i64 noundef %18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #25
          to label %bb3.i.i93.cont unwind label %cleanup

bb3.i.i93.cont:                                   ; preds = %bb3.i.i93.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit109": ; preds = %bb12.i.i.i106
  %_7.not.i.i.i = icmp eq i64 %iter.sroa.0.0210, %_0.sroa.3.0.i.i.i31
  br i1 %_7.not.i.i.i, label %bb3.i.i.i, label %bb29

bb3.i.i.i:                                        ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit109"
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %_8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %_0.sroa.0.0.i.i.i32, i64 %iter.sroa.0.0210), !alias.scope !1673, !noalias !1680
  %.not = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not, label %bb46, label %bb29

bb29:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h08cdf7b83b6a0c87E.exit109", %bb3.i.i.i
  %_7.not.i.i.i113 = icmp eq i64 %iter.sroa.0.0210, %_0.sroa.3.0.i.i.i57
  br i1 %_7.not.i.i.i113, label %bb3.i.i.i115, label %bb31

bb3.i.i.i115:                                     ; preds = %bb29
  %bcmp.i.i.i118 = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %_8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %_0.sroa.0.0.i.i.i58, i64 %iter.sroa.0.0210), !alias.scope !1684, !noalias !1691
  %.not173 = icmp eq i32 %bcmp.i.i.i118, 0
  br i1 %.not173, label %bb46, label %bb31

bb46:                                             ; preds = %bb3.i.i.i151, %bb3.i.i.i142, %bb3.i.i.i133, %bb3.i.i.i124, %bb3.i.i.i115, %bb3.i.i.i
  %_0.i.i.i23 = icmp ult i64 %spec.select171201, %_0.i
  %_0.i1.i.i26 = zext i1 %_0.i.i.i23 to i64
  %spec.select171 = add nuw i64 %spec.select171201, %_0.i1.i.i26
  br i1 %_0.i.i.i23, label %bb21, label %bb13.loopexit

bb31:                                             ; preds = %bb29, %bb3.i.i.i115
  %_7.not.i.i.i122 = icmp eq i64 %iter.sroa.0.0210, %_0.sroa.3.0.i.i.i90
  br i1 %_7.not.i.i.i122, label %bb3.i.i.i124, label %bb33

bb3.i.i.i124:                                     ; preds = %bb31
  %bcmp.i.i.i127 = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %_8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %data.i.i.i103, i64 %iter.sroa.0.0210), !alias.scope !1695, !noalias !1702
  %.not174 = icmp eq i32 %bcmp.i.i.i127, 0
  br i1 %.not174, label %bb46, label %bb33

bb33:                                             ; preds = %bb31, %bb3.i.i.i124
  %_7.not.i.i.i131 = icmp eq i64 %_0.sroa.3.0.i.i.i31, %_0.sroa.3.0.i.i.i57
  br i1 %_7.not.i.i.i131, label %bb3.i.i.i133, label %bb35

bb3.i.i.i133:                                     ; preds = %bb33
  %bcmp.i.i.i136 = tail call i32 @bcmp(ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i32, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i58, i64 %_0.sroa.3.0.i.i.i31), !alias.scope !1706, !noalias !1713
  %.not175 = icmp eq i32 %bcmp.i.i.i136, 0
  br i1 %.not175, label %bb46, label %bb35

bb35:                                             ; preds = %bb33, %bb3.i.i.i133
  %_7.not.i.i.i140 = icmp eq i64 %_0.sroa.3.0.i.i.i31, %_0.sroa.3.0.i.i.i90
  br i1 %_7.not.i.i.i140, label %bb3.i.i.i142, label %bb37

bb3.i.i.i142:                                     ; preds = %bb35
  %bcmp.i.i.i145 = tail call i32 @bcmp(ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i32, ptr nonnull readonly align 1 %data.i.i.i103, i64 %_0.sroa.3.0.i.i.i31), !alias.scope !1717, !noalias !1724
  %.not176 = icmp eq i32 %bcmp.i.i.i145, 0
  br i1 %.not176, label %bb46, label %bb37

bb37:                                             ; preds = %bb35, %bb3.i.i.i142
  %_7.not.i.i.i149 = icmp eq i64 %_0.sroa.3.0.i.i.i57, %_0.sroa.3.0.i.i.i90
  br i1 %_7.not.i.i.i149, label %bb3.i.i.i151, label %bb47

bb3.i.i.i151:                                     ; preds = %bb37
  %bcmp.i.i.i154 = tail call i32 @bcmp(ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i58, ptr nonnull readonly align 1 %data.i.i.i103, i64 %_0.sroa.3.0.i.i.i57), !alias.scope !1728, !noalias !1735
  %.not177 = icmp eq i32 %bcmp.i.i.i154, 0
  br i1 %.not177, label %bb46, label %bb47

bb47:                                             ; preds = %bb37, %bb3.i.i.i151, %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb48 unwind label %cleanup.i.i156

cleanup.i.i156:                                   ; preds = %bb47
  %20 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i157

terminate.i.i157:                                 ; preds = %cleanup.i.i156
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

terminate:                                        ; preds = %cleanup
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
