define i64 @f_gold(i64 %a, i64 %b, i64 %k) #0 !dbg !4943 {
entry:
    #dbg_value(i64 %a, !4947, !DIExpression(), !4952)
    #dbg_value(i64 %b, !4948, !DIExpression(), !4952)
    #dbg_value(i64 %k, !4949, !DIExpression(), !4952)
    #dbg_value(i64 %b, !4948, !DIExpression(), !4953)
    #dbg_value(i64 %a, !4947, !DIExpression(), !4954)
  %0 = sub i64 %b, %a, !dbg !4955
  %1 = sub i64 %0, 1, !dbg !4956
    #dbg_value(i64 %1, !4950, !DIExpression(), !4957)
    #dbg_value(i64 %k, !4949, !DIExpression(), !4958)
    #dbg_value(i64 %b, !4948, !DIExpression(), !4959)
  %2 = sub i64 %k, %b, !dbg !4960
    #dbg_value(i64 %a, !4947, !DIExpression(), !4961)
  %3 = sub i64 %a, 1, !dbg !4962
  %4 = add i64 %2, %3, !dbg !4963
    #dbg_value(i64 %4, !4951, !DIExpression(), !4964)
    #dbg_value(i64 %1, !4950, !DIExpression(), !4965)
    #dbg_value(i64 %4, !4951, !DIExpression(), !4966)
  %5 = icmp eq i64 %1, %4, !dbg !4967
  br i1 %5, label %if.then, label %if.done, !dbg !4968

if.then:                                          ; preds = %entry
  ret i64 0, !dbg !4969

if.done:                                          ; preds = %entry
    #dbg_value(i64 %1, !4950, !DIExpression(), !4970)
    #dbg_value(i64 %4, !4951, !DIExpression(), !4971)
  %6 = call i64 @main.min(i64 %1, i64 %4, ptr undef), !dbg !4972
  ret i64 %6, !dbg !4973
}
