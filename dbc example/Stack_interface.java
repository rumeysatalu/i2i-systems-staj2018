/* 
Rumeysa Talu
29.06.2018 
DBC EXAMPLE
*\
 
/**
 *  @inv !isEmpty() implies top() != null   //  no null objects are allowed
 */
public interface Stack
{
    /**
     *  @pre o != null
     *  @post !isEmpty()
     *  @post top() == o
     */
    void push(Object o);
    /**
     *  @pre !isEmpty()
     *  @post @return == top()@pre
     */
    Object pop();
    /**
     *  @pre !isEmpty()
     */
    Object top();
    boolean isEmpty();
}