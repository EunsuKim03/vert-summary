; ModuleID = '0008_libtree_emit.40e1bd87a4b314ab-cgu.0'
source_filename = "0008_libtree_emit.40e1bd87a4b314ab-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe48f06864ff7cf0E" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@alloc_99ac8a81a24cac863217ce4a5cbfabea = private unnamed_addr constant [5 x i8] c"Error", align 1
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E", [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hcc4e95ed9fd4917cE", ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17he8d1b5eb989a688cE", ptr @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E }>, align 8
@alloc_296ffa51fb6222b3fa05c6868be5654f = private unnamed_addr constant [72 x i8] c"/root/es/vert/vert/rust_funcs/c_crown/0008_libtree/0008_libtree_emit.rs\00", align 1
@alloc_2ba7a2fa4926880e1586801c53a8ce0d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\19\00\00\00\0C\00\00\00" }>, align 8
@alloc_0c812808379efded5a4fb82d2790b556 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@alloc_4b9ea91629b037351b3e7a2c6026ae06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_296ffa51fb6222b3fa05c6868be5654f, [16 x i8] c"G\00\00\00\00\00\00\00\10\00\00\003\00\00\00" }>, align 8

; core::fmt::Write::write_fmt
; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h19bb28826bad3fc9E(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noundef nonnull %args.0, ptr noundef nonnull %args.1) unnamed_addr #0 {
start:
; call core::fmt::write
  %0 = tail call noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 8 dereferenceable(24) %self, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.1, ptr noundef nonnull %args.0, ptr noundef nonnull %args.1)
  ret i1 %0
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef align 8 dereferenceable(24) %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %start
  %0 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
          to label %bb1.i unwind label %terminate.i

terminate.i:                                      ; preds = %cleanup.i
  %1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10
  unreachable

bb1.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %0

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit": ; preds = %start
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_1)
  ret void
}

; <core::fmt::Error as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe48f06864ff7cf0E"(ptr noalias nonnull readonly align 1 captures(none) %self, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #1 {
start:
; call core::fmt::Formatter::write_str
  %_0 = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef align 8 dereferenceable(24) %f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_99ac8a81a24cac863217ce4a5cbfabea, i64 noundef 5)
  ret i1 %_0
}

; <alloc::string::String as core::fmt::Write>::write_char
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17he8d1b5eb989a688cE"(ptr noalias noundef align 8 dereferenceable(24) %self, i32 noundef range(i32 0, 1114112) %c) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds nuw i8, ptr %self, i64 16
  %len.i = load i64, ptr %0, align 8, !alias.scope !3, !noundef !6
  %_14.i = icmp sgt i64 %len.i, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %c, 128
  br i1 %_16.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %start
  %_17.i = icmp samesign ult i32 %c, 2048
  br i1 %_17.i, label %bb2.i, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %c, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i

bb2.i:                                            ; preds = %bb4.i, %bb3.i, %start
  %ch_len.sroa.0.0.i = phi i64 [ 1, %start ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %self, i64 noundef %ch_len.sroa.0.0.i)
  %1 = getelementptr inbounds nuw i8, ptr %self, i64 8
  %_20.i = load ptr, ptr %1, align 8, !alias.scope !3, !nonnull !6, !noundef !6
  %count.i = load i64, ptr %0, align 8, !alias.scope !3, !noundef !6
  %_21.i = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb2.i
  %_29.i.i = icmp samesign ult i32 %c, 2048
  %2 = trunc i32 %c to i8
  %_5.i.i = and i8 %2, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i = lshr i32 %c, 6
  %3 = trunc i32 %_10.i.i to i8
  %_8.i.i = and i8 %3, 63
  %last2.i.i = or disjoint i8 %_8.i.i, -128
  %_14.i.i = lshr i32 %c, 12
  %4 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %4, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %c, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i.i, label %bb2.i.i

bb12.i.i:                                         ; preds = %bb2.i
  %5 = trunc nuw nsw i32 %c to i8
  store i8 %5, ptr %_8.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %c, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i.i:                                          ; preds = %bb7.i.i
  %6 = or disjoint i8 %3, -64
  store i8 %6, ptr %_8.i, align 1
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  %7 = or disjoint i8 %4, -32
  store i8 %7, ptr %_8.i, align 1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i.i, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i
  store i64 %new_len.i, ptr %0, align 8, !alias.scope !3
  ret i1 false
}

; <alloc::string::String as core::fmt::Write>::write_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hcc4e95ed9fd4917cE"(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #1 {
start:
  %_9.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
; call <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %self, ptr noundef nonnull readonly align 1 %s.0, ptr noundef nonnull readonly %_9.i)
  ret i1 false
}

; <alloc::string::String as core::iter::traits::collect::Extend<char>>::extend
; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17heffda91cf20847ccE"(ptr noalias noundef align 8 dereferenceable(24) %self, ptr noundef nonnull %iter.0, ptr noundef %iter.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = icmp ne ptr %iter.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = ptrtoint ptr %iter.1 to i64
  %2 = ptrtoint ptr %iter.0 to i64
  %3 = sub nuw i64 %1, %2
  %d1.i.i = lshr i64 %3, 2
  %r.i.i = and i64 %3, 3
  %_12.not.i.i = icmp ne i64 %r.i.i, 0
  %4 = zext i1 %_12.not.i.i to i64
  %_4.sroa.0.0.i.i = add nuw nsw i64 %d1.i.i, %4
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %self, i64 noundef %_4.sroa.0.0.i.i)
; call <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
  tail call void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr noundef nonnull readnone %iter.0, ptr noundef nonnull readonly %iter.1, ptr noalias noundef nonnull align 8 dereferenceable(24) %self)
  ret void
}

; <alloc::string::String as core::iter::traits::collect::FromIterator<char>>::from_iter
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE"(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr noundef nonnull %iter.0, ptr noundef %iter.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %buf = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf)
  store i64 0, ptr %buf, align 8
  %_5.sroa.4.0.buf.sroa_idx = getelementptr inbounds nuw i8, ptr %buf, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_5.sroa.4.0.buf.sroa_idx, align 8
  %_5.sroa.5.0.buf.sroa_idx = getelementptr inbounds nuw i8, ptr %buf, i64 16
  store i64 0, ptr %_5.sroa.5.0.buf.sroa_idx, align 8
  %0 = icmp ne ptr %iter.1, null
  tail call void @llvm.assume(i1 %0)
  %1 = ptrtoint ptr %iter.1 to i64
  %2 = ptrtoint ptr %iter.0 to i64
  %3 = sub nuw i64 %1, %2
  %d1.i.i.i = lshr i64 %3, 2
  %r.i.i.i = and i64 %3, 3
  %_12.not.i.i.i = icmp ne i64 %r.i.i.i, 0
  %4 = zext i1 %_12.not.i.i.i to i64
  %_4.sroa.0.0.i.i.i = add nuw nsw i64 %d1.i.i.i, %4
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %buf, i64 noundef %_4.sroa.0.0.i.i.i)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %start
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
  invoke void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr noundef nonnull readnone %iter.0, ptr noundef nonnull readonly %iter.1, ptr noalias noundef nonnull align 8 dereferenceable(24) %buf)
          to label %bb1 unwind label %cleanup

cleanup:                                          ; preds = %.noexc, %start
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef align 8 dereferenceable(24) %buf) #11
          to label %bb3 unwind label %terminate

bb1:                                              ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %buf, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf)
  ret void

terminate:                                        ; preds = %cleanup
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10
  unreachable

bb3:                                              ; preds = %cleanup
  resume { ptr, i32 } %5
}

; <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr noundef nonnull readnone captures(address) %self.0, ptr noundef readonly captures(address) %self.1, ptr noalias noundef align 8 dereferenceable(24) %f) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %0 = getelementptr inbounds nuw i8, ptr %f, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %f, i64 8
  br label %bb1.i

bb1.i:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i", %start
  %self.sroa.2.0.i = phi ptr [ %self.1, %start ], [ %self.sroa.2.4.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i" ]
  %2 = icmp ne ptr %self.sroa.2.0.i, null
  tail call void @llvm.assume(i1 %2)
  %3 = icmp eq ptr %self.0, %self.sroa.2.0.i
  %_24.i.i.i.i = getelementptr inbounds i8, ptr %self.sroa.2.0.i, i64 -1
  %spec.select.i = select i1 %3, ptr %self.sroa.2.0.i, ptr %_24.i.i.i.i
  br i1 %3, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i", label %bb17.i.i.i

bb17.i.i.i:                                       ; preds = %bb1.i
  %w.i.i.i = load i8, ptr %_24.i.i.i.i, align 1, !noalias !10, !noundef !6
  %_6.i.i.i = icmp sgt i8 %w.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb17.i.i.i
  %4 = icmp ne ptr %self.0, %spec.select.i
  tail call void @llvm.assume(i1 %4)
  %_24.i13.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -1
  %z.i.i.i = load i8, ptr %_24.i13.i.i.i, align 1, !noalias !10, !noundef !6
  %_26.i.i.i = and i8 %z.i.i.i, 31
  %5 = zext nneg i8 %_26.i.i.i to i32
  %_12.i.i.i = icmp slt i8 %z.i.i.i, -64
  br i1 %_12.i.i.i, label %bb6.i.i.i, label %bb13.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
  %_8.i.i.i = zext nneg i8 %w.i.i.i to i32
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %6 = icmp ne ptr %self.0, %_24.i13.i.i.i
  tail call void @llvm.assume(i1 %6)
  %_24.i19.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -2
  %y.i.i.i = load i8, ptr %_24.i19.i.i.i, align 1, !noalias !10, !noundef !6
  %_31.i.i.i = and i8 %y.i.i.i, 15
  %7 = zext nneg i8 %_31.i.i.i to i32
  %_16.i.i.i = icmp slt i8 %y.i.i.i, -64
  br i1 %_16.i.i.i, label %bb8.i.i.i, label %bb11.i.i.i

bb13.i.i.i:                                       ; preds = %bb11.i.i.i, %bb4.i.i.i
  %self.sroa.2.2.i = phi ptr [ %self.sroa.2.3.i, %bb11.i.i.i ], [ %_24.i13.i.i.i, %bb4.i.i.i ]
  %ch.sroa.0.0.i.i.i = phi i32 [ %12, %bb11.i.i.i ], [ %5, %bb4.i.i.i ]
  %_43.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i, 6
  %_45.i.i.i = and i8 %w.i.i.i, 63
  %_44.i.i.i = zext nneg i8 %_45.i.i.i to i32
  %8 = or disjoint i32 %_43.i.i.i, %_44.i.i.i
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %9 = icmp ne ptr %self.0, %_24.i19.i.i.i
  tail call void @llvm.assume(i1 %9)
  %_24.i25.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 -3
  %x.i.i.i = load i8, ptr %_24.i25.i.i.i, align 1, !noalias !10, !noundef !6
  %_36.i.i.i = and i8 %x.i.i.i, 7
  %10 = zext nneg i8 %_36.i.i.i to i32
  %_37.i.i.i = shl nuw nsw i32 %10, 6
  %_39.i.i.i = and i8 %y.i.i.i, 63
  %_38.i.i.i = zext nneg i8 %_39.i.i.i to i32
  %11 = or disjoint i32 %_37.i.i.i, %_38.i.i.i
  br label %bb11.i.i.i

bb11.i.i.i:                                       ; preds = %bb8.i.i.i, %bb6.i.i.i
  %self.sroa.2.3.i = phi ptr [ %_24.i25.i.i.i, %bb8.i.i.i ], [ %_24.i19.i.i.i, %bb6.i.i.i ]
  %ch.sroa.0.1.i.i.i = phi i32 [ %11, %bb8.i.i.i ], [ %7, %bb6.i.i.i ]
  %_40.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %12 = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  br label %bb13.i.i.i

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i": ; preds = %bb13.i.i.i, %bb3.i.i.i, %bb1.i
  %self.sroa.2.4.i = phi ptr [ %spec.select.i, %bb1.i ], [ %spec.select.i, %bb3.i.i.i ], [ %self.sroa.2.2.i, %bb13.i.i.i ]
  %spec.select.i.i = phi i32 [ 1114112, %bb1.i ], [ %_8.i.i.i, %bb3.i.i.i ], [ %8, %bb13.i.i.i ]
  %.not.i = icmp eq i32 %spec.select.i.i, 1114112
  br i1 %.not.i, label %_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE.exit, label %bb3.i

bb3.i:                                            ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"
  %len.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !15, !noalias !18, !noundef !6
  %_14.i.i.i.i = icmp sgt i64 %len.i.i.i.i, -1
  tail call void @llvm.assume(i1 %_14.i.i.i.i)
  %_16.i.i.i.i = icmp samesign ult i32 %spec.select.i.i, 128
  br i1 %_16.i.i.i.i, label %bb2.i.i.i.i, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb3.i
  %_17.i.i.i.i = icmp samesign ult i32 %spec.select.i.i, 2048
  br i1 %_17.i.i.i.i, label %bb2.i.i.i.i, label %bb4.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb3.i.i.i.i
  %_18.i.i.i.i = icmp samesign ult i32 %spec.select.i.i, 65536
  %..i.i.i.i = select i1 %_18.i.i.i.i, i64 3, i64 4
  br label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb4.i.i.i.i, %bb3.i.i.i.i, %bb3.i
  %ch_len.sroa.0.0.i.i.i.i = phi i64 [ 1, %bb3.i ], [ %..i.i.i.i, %bb4.i.i.i.i ], [ 2, %bb3.i.i.i.i ]
; call alloc::vec::Vec<T,A>::reserve
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %f, i64 noundef %ch_len.sroa.0.0.i.i.i.i), !noalias !18
  %_20.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !15, !noalias !18, !nonnull !6, !noundef !6
  %count.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !15, !noalias !18, !noundef !6
  %_21.i.i.i.i = icmp sgt i64 %count.i.i.i.i, -1
  tail call void @llvm.assume(i1 %_21.i.i.i.i)
  %_8.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20.i.i.i.i, i64 %count.i.i.i.i
  br i1 %_16.i.i.i.i, label %bb12.i.i.i.i.i, label %bb7.i.i.i.i.i

bb7.i.i.i.i.i:                                    ; preds = %bb2.i.i.i.i
  %_29.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i, 2048
  %13 = trunc i32 %spec.select.i.i to i8
  %_5.i.i.i.i.i = and i8 %13, 63
  %last1.i.i.i.i.i = or disjoint i8 %_5.i.i.i.i.i, -128
  %_10.i.i.i.i.i = lshr i32 %spec.select.i.i, 6
  %14 = trunc i32 %_10.i.i.i.i.i to i8
  %_8.i.i.i.i.i = and i8 %14, 63
  %last2.i.i.i.i.i = or disjoint i8 %_8.i.i.i.i.i, -128
  %_14.i.i.i.i.i = lshr i32 %spec.select.i.i, 12
  %15 = trunc i32 %_14.i.i.i.i.i to i8
  %_12.i.i.i.i.i = and i8 %15, 63
  %last3.i.i.i.i.i = or disjoint i8 %_12.i.i.i.i.i, -128
  %_18.i.i.i.i.i = lshr i32 %spec.select.i.i, 18
  %_16.i.i.i.i.i = trunc nuw nsw i32 %_18.i.i.i.i.i to i8
  %last4.i.i.i.i.i = or disjoint i8 %_16.i.i.i.i.i, -16
  br i1 %_29.i.i.i.i.i, label %bb1.i.i.i.i.i, label %bb2.i.i.i.i.i

bb12.i.i.i.i.i:                                   ; preds = %bb2.i.i.i.i
  %16 = trunc nuw nsw i32 %spec.select.i.i to i8
  store i8 %16, ptr %_8.i.i.i.i, align 1, !noalias !18
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i"

bb2.i.i.i.i.i:                                    ; preds = %bb7.i.i.i.i.i
  %_30.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i, 65536
  br i1 %_30.i.i.i.i.i, label %bb3.i.i.i.i.i, label %bb4.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb7.i.i.i.i.i
  %17 = or disjoint i8 %14, -64
  store i8 %17, ptr %_8.i.i.i.i, align 1, !noalias !18
  %_21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 1
  store i8 %last1.i.i.i.i.i, ptr %_21.i.i.i.i.i, align 1, !noalias !18
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i"

bb4.i.i.i.i.i:                                    ; preds = %bb2.i.i.i.i.i
  store i8 %last4.i.i.i.i.i, ptr %_8.i.i.i.i, align 1, !noalias !18
  %_25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 1
  store i8 %last3.i.i.i.i.i, ptr %_25.i.i.i.i.i, align 1, !noalias !18
  %_26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 2
  store i8 %last2.i.i.i.i.i, ptr %_26.i.i.i.i.i, align 1, !noalias !18
  %_27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 3
  store i8 %last1.i.i.i.i.i, ptr %_27.i.i.i.i.i, align 1, !noalias !18
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i"

bb3.i.i.i.i.i:                                    ; preds = %bb2.i.i.i.i.i
  %18 = or disjoint i8 %15, -32
  store i8 %18, ptr %_8.i.i.i.i, align 1, !noalias !18
  %_23.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 1
  store i8 %last2.i.i.i.i.i, ptr %_23.i.i.i.i.i, align 1, !noalias !18
  %_24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i, i64 2
  store i8 %last1.i.i.i.i.i, ptr %_24.i.i.i.i.i, align 1, !noalias !18
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E.exit.i": ; preds = %bb3.i.i.i.i.i, %bb4.i.i.i.i.i, %bb1.i.i.i.i.i, %bb12.i.i.i.i.i
  %new_len.i.i.i.i = add nuw i64 %ch_len.sroa.0.0.i.i.i.i, %len.i.i.i.i
  store i64 %new_len.i.i.i.i, ptr %0, align 8, !alias.scope !15, !noalias !18
  br label %bb1.i

_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE.exit: ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @is_ascending_order(ptr noalias noundef nonnull readonly align 8 captures(none) %values.0, i64 noundef range(i64 0, 1152921504606846976) %values.1) unnamed_addr #0 {
start:
  br label %bb2

bb2:                                              ; preds = %bb8, %start
  %iter.sroa.0.0 = phi i64 [ 1, %start ], [ %spec.select, %bb8 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %values.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb11

bb5:                                              ; preds = %bb2
  %_12 = add nsw i64 %iter.sroa.0.0, -1
  %_13 = icmp ult i64 %_12, %values.1
  br i1 %_13, label %bb8, label %panic

bb11:                                             ; preds = %bb8, %bb2
  %_0.sroa.0.0 = xor i1 %_0.i.i.i, true
  ret i1 %_0.sroa.0.0

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef %values.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2ba7a2fa4926880e1586801c53a8ce0d) #12
  unreachable

bb8:                                              ; preds = %bb5
  %0 = getelementptr inbounds nuw i64, ptr %values.0, i64 %_12
  %_11 = load i64, ptr %0, align 8, !noundef !6
  %1 = getelementptr inbounds nuw i64, ptr %values.0, i64 %iter.sroa.0.0
  %_14 = load i64, ptr %1, align 8, !noundef !6
  %_10.not = icmp ult i64 %_11, %_14
  br i1 %_10.not, label %bb2, label %bb11
}

; Function Attrs: nonlazybind uwtable
define void @utoa(ptr noalias noundef align 8 dereferenceable(24) %string, i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %buf.i.i = alloca [24 x i8], align 8
  %_20 = alloca [24 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  %tmp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp)
  store i64 0, ptr %tmp, align 8, !alias.scope !23
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %tmp, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !23
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %tmp, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !23
  %_4.not21 = icmp eq i64 %0, 0
  br i1 %_4.not21, label %bb7, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %_14.sroa.4.0.args.sroa_idx = getelementptr inbounds nuw i8, ptr %args, i64 8
  br label %bb2

bb7:                                              ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit", %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_20)
  %_6.i.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !26, !nonnull !6, !noundef !6
  %len.i.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !26, !noundef !6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i.i), !noalias !31
  store i64 0, ptr %buf.i.i, align 8, !noalias !31
  %_5.sroa.4.0.buf.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %buf.i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_5.sroa.4.0.buf.sroa_idx.i.i, align 8, !noalias !31
  %_5.sroa.5.0.buf.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %buf.i.i, i64 16
  store i64 0, ptr %_5.sroa.5.0.buf.sroa_idx.i.i, align 8, !noalias !31
  %d1.i.i.i.i.i = lshr i64 %len.i.i, 2
  %r.i.i.i.i.i = and i64 %len.i.i, 3
  %_12.not.i.i.i.i.i = icmp ne i64 %r.i.i.i.i.i, 0
  %1 = zext i1 %_12.not.i.i.i.i.i to i64
  %_4.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %d1.i.i.i.i.i, %1
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24) %buf.i.i, i64 noundef %_4.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i.i unwind label %cleanup.i.i, !noalias !31

bb2:                                              ; preds = %bb2.lr.ph, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit"
  %value.sroa.0.022 = phi i64 [ %0, %bb2.lr.ph ], [ %3, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit" ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_11)
  %2 = urem i64 %value.sroa.0.022, 10
  %3 = udiv i64 %value.sroa.0.022, 10
  store i64 %2, ptr %_11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args)
  store ptr %_11, ptr %args, align 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E", ptr %_14.sroa.4.0.args.sroa_idx, align 8
; invoke core::fmt::write
  %4 = invoke noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 8 dereferenceable(24) %tmp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @vtable.1, ptr noundef nonnull @alloc_0c812808379efded5a4fb82d2790b556, ptr noundef nonnull %args)
          to label %bb5 unwind label %cleanup.loopexit

bb18:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp, %cleanup.i.i9, %cleanup.i.i, %cleanup1
  %.pn = phi { ptr, i32 } [ %9, %cleanup1 ], [ %5, %cleanup.i.i ], [ %10, %cleanup.i.i9 ], [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef align 8 dereferenceable(24) %tmp) #11
          to label %common.resume unwind label %terminate

cleanup.loopexit:                                 ; preds = %bb2
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb18

cleanup.loopexit.split-lp:                        ; preds = %bb2.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb18

.noexc.i.i:                                       ; preds = %bb7
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::fold
  invoke void @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf0183717a9e07028E"(ptr noundef nonnull readnone %_6.i.i, ptr noundef nonnull readonly %_7.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %buf.i.i)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE.exit unwind label %cleanup.i.i, !noalias !31

cleanup.i.i:                                      ; preds = %.noexc.i.i, %bb7
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef align 8 dereferenceable(24) %buf.i.i) #11
          to label %bb18 unwind label %terminate.i.i, !noalias !31

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10, !noalias !31
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_20, ptr noundef nonnull align 8 dereferenceable(24) %buf.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i.i), !noalias !31
  %7 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %_6.i.i6 = load ptr, ptr %7, align 8, !alias.scope !36, !nonnull !6, !noundef !6
  %8 = getelementptr inbounds nuw i8, ptr %_20, i64 16
  %len.i.i7 = load i64, ptr %8, align 8, !alias.scope !36, !noundef !6
  %_9.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i6, i64 %len.i.i7
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %string, ptr noundef nonnull readonly align 1 %_6.i.i6, ptr noundef nonnull readonly %_9.i.i)
          to label %bb13 unwind label %cleanup1

cleanup1:                                         ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE.exit
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E"(ptr noalias noundef align 8 dereferenceable(24) %_20) #11
          to label %bb18 unwind label %terminate

bb13:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE.exit
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_20)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit.i" unwind label %cleanup.i.i9

cleanup.i.i9:                                     ; preds = %bb13
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_20)
          to label %bb18 unwind label %terminate.i.i10

terminate.i.i10:                                  ; preds = %cleanup.i.i9
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit.i": ; preds = %bb13
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_20)
          to label %bb15 unwind label %cleanup.loopexit.split-lp

bb15:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hffe8cc83eadb6e36E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_20)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E.exit18" unwind label %cleanup.i.i14

cleanup.i.i14:                                    ; preds = %bb15
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %common.resume unwind label %terminate.i.i15

terminate.i.i15:                                  ; preds = %cleanup.i.i14
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10
  unreachable

common.resume:                                    ; preds = %bb18, %cleanup.i.i14
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup.i.i14 ], [ %.pn, %bb18 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd43c7bafa56784c9E.exit18": ; preds = %bb15
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp)
  ret void

terminate:                                        ; preds = %bb18, %cleanup1
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #10
  unreachable

bb5:                                              ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
  br i1 %4, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit", !prof !41

bb2.i:                                            ; preds = %bb5
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4b9ea91629b037351b3e7a2c6026ae06) #13
          to label %.noexc unwind label %cleanup.loopexit.split-lp

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h81e500ec803a85fcE.exit": ; preds = %bb5
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %e.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_11)
  %_4.not = icmp ult i64 %value.sroa.0.022, 10
  br i1 %_4.not, label %bb7, label %bb2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h4fc94a72f199f709E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; core::panicking::panic_in_cleanup
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() unnamed_addr #6

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; core::fmt::Formatter::write_str
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17h66c46e6e00843febE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; core::fmt::write
; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h22467d3ad5dd5554E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold }
attributes #12 = { noinline noreturn }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.93.1 (01f6ddf75 2026-02-11)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self"}
!5 = distinct !{!5, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE"}
!6 = !{}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE: argument 0"}
!9 = distinct !{!9, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfold17ha4c392efcbcaabfdE"}
!10 = !{!11, !13, !8}
!11 = distinct !{!11, !12, !"_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E: %bytes"}
!12 = distinct !{!12, !"_ZN4core3str11validations23next_code_point_reverse17heac760c989839ef0E"}
!13 = distinct !{!13, !14, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E: %self"}
!14 = distinct !{!14, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h4439ae3a79c52123E"}
!15 = !{!16, !8}
!16 = distinct !{!16, !17, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE: %self"}
!17 = distinct !{!17, !"_ZN5alloc6string6String4push17h1a40906a941ba4dfE"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE: %_1"}
!20 = distinct !{!20, !"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend28_$u7b$$u7b$closure$u7d$$u7d$17h53bdb6b02e5a20bcE"}
!21 = distinct !{!21, !22, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E: %_1"}
!22 = distinct !{!22, !"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h7289b83df72b8726E"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN5alloc6string6String3new17h365994a08ba9cd06E: %_0"}
!25 = distinct !{!25, !"_ZN5alloc6string6String3new17h365994a08ba9cd06E"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!28 = distinct !{!28, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!29 = distinct !{!29, !30, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!30 = distinct !{!30, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE: %_0"}
!33 = distinct !{!33, !"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h2d4e9d7cfce3c6edE"}
!34 = distinct !{!34, !35, !"_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE: %_0"}
!35 = distinct !{!35, !"_ZN4core4iter6traits8iterator8Iterator7collect17h3204ea02d5b29f0bE"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E: %self"}
!38 = distinct !{!38, !"_ZN5alloc6string6String6as_str17h5d0f4124dd88b637E"}
!39 = distinct !{!39, !40, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E: %self"}
!40 = distinct !{!40, !"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf2dd8c0f474e3d11E"}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
